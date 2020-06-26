import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:weather/provider/weather_provider.dart';

class WeeklyWeatherRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final iconSize = 30.0;
    final weatherData = Provider.of<WeatherProvider>(context).items.daily;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: weatherData.length,
      itemBuilder: (BuildContext context, int index) {
        String day = '';
        if (index == 0)
          day = 'Feels Like';
        else if (index == 1)
          day = 'Tommorow';
        else {
          final temp =
              DateTime.fromMillisecondsSinceEpoch(weatherData[index].dt * 1000);
          day = DateFormat('dd-MM-yy').format(temp);
        }
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withAlpha(60),
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: iconSize,
                      height: iconSize,
                      child: index == 0
                          ? Text('${weatherData[index].feelsLike.day.toStringAsPrecision(3)}')
                          : Text('${weatherData[index].temp.day.toStringAsPrecision(3)}')),
                  SizedBox(height: 10),
                  Opacity(
                    opacity: 0.75,
                    child: Text(
                      day,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
