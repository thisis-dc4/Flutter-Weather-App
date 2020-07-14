import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:weather/provider/weather_provider.dart';
import 'package:weather/screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        darkTheme: ThemeData.dark(),
        home: HomePage(),
      ),
    );
  }
}
