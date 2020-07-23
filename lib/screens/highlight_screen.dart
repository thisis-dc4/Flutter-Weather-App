import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'package:weather/custom_icons.dart';
import 'package:weather/models/location_model.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/provider/hive_db_provider.dart';
import 'package:weather/screens/location_manager.dart';
import 'package:weather/widgets/animated_current_weather.dart';
import 'package:weather/widgets/bottom_row.dart';
import 'package:weather/widgets/custom_search_delegate.dart';

class SummaryScreen extends StatelessWidget {
  final int index;

  const SummaryScreen({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HiveDbProvider hiveDbProvider = Provider.of<HiveDbProvider>(context);
    final WeatherModel weatherData = hiveDbProvider.items[index];
    final LocationModel savedData = hiveDbProvider.getDataAt(index);
    final String iconName = 'i${weatherData.current.weather[0].id}';
    final IconData icon = CustomIcons().iconMapping[iconName];
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () =>
                showSearch(context: context, delegate: CustomSearchDelegate()),
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 12.0,
                    left: 16.0,
                    child: Text(
                      "WEATHER APP",
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.location_city),
              title: const Text('Locations'),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => LocationManager(),
              )),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    AnimatedCurrentWeather(
                      toValue: weatherData.current.temp,
                    ),
                    Icon(icon, size: 70),
                  ],
                ),
                Text(
                  savedData.name.toUpperCase(),
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(height: 10),
                Text(
                  weatherData.current.weather[0].description.toUpperCase(),
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(height: 5),
                Text(
                  DateFormat.d()
                      .addPattern('MMM, EEEEEE')
                      .format(DateTime.now())
                      .toUpperCase(),
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ),
          Expanded(
            child: BottomRow(weatherData: weatherData),
          )
        ],
      ),
    );
  }
}
