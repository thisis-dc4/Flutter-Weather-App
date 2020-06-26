import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:weather/provider/weather_provider.dart';
import 'package:weather/widgets/animated_current_weather.dart';
import 'package:weather/widgets/weekly_weather_row.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final weatherData = Provider.of<WeatherProvider>(context).items;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: 
                  AnimatedCurrentWeather(
                    toValue: weatherData.current.temp,
                  ),
            ),
            Expanded(
              flex: 1,
              child: WeeklyWeatherRow(),
            )
          ],
        ),
      ),
    );
  }
}
