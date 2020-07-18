import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:weather/custom_icons.dart';
import 'package:weather/models/location_model.dart';

import 'package:weather/provider/weather_provider.dart';
import 'package:weather/screens/detail_screen.dart';
import 'package:weather/widgets/animated_current_weather.dart';
import 'package:weather/widgets/weekly_weather_row.dart';

class MainPage extends StatelessWidget {
  final int index;
  const MainPage({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final locationDataBox = Hive.box('locationData');
    final LocationModel savedData = locationDataBox.getAt(index);
    final weatherData = Provider.of<WeatherProvider>(context).items[index];
    final iconName = 'i${weatherData.current.weather[0].id}';
    final icon = CustomIcons().iconMapping[iconName];
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        Column(
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
              child: WeeklyWeatherRow(weatherData: weatherData),
            )
          ],
        ),
        DetailScreen(index: index),
      ],
    );
  }
}
