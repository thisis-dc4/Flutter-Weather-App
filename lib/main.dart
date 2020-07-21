import 'package:flutter/material.dart';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import 'package:weather/models/location_model.dart';
import 'package:weather/provider/hive_db_provider.dart';
import 'package:weather/provider/search_provider.dart';
import 'package:weather/provider/weather_provider.dart';
import 'package:weather/screens/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final path = await getApplicationDocumentsDirectory();
  Hive.init(path.path);
  Hive.registerAdapter(LocationModelAdapter(), 0);
  await Hive.openBox('locationData');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HiveDbProvider>(
          create: (context) => HiveDbProvider(),
        ),
        ChangeNotifierProxyProvider<HiveDbProvider, WeatherProvider>(
          create: (context) => WeatherProvider(),
          update: (context, value, previous) =>
              WeatherProvider(hiveDbProvider: value),
        ),
        ChangeNotifierProxyProvider<HiveDbProvider, SearchProvider>(
          create: (context) => SearchProvider(),
          update: (context, value, previous) =>
              SearchProvider(hiveDbProvider: value),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          appBarTheme: AppBarTheme(
            color: Colors.transparent,
            elevation: 0.0,
            actionsIconTheme: IconThemeData(
              color: Colors.black,
            ),
          ),
        ),
        darkTheme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(
            color: Colors.transparent,
            elevation: 0.0,
            actionsIconTheme: IconThemeData(
              color: Colors.white,
            ),
          ),
        ),
        home: HomePage(),
      ),
    );
  }

  @override
  void dispose() {
    Hive.box('locationData').compact();
    Hive.close();
    super.dispose();
  }
}
