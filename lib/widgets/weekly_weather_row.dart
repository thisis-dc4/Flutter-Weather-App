import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:weather/custom_icons.dart';

import 'package:weather/provider/weather_provider.dart';
import 'package:weather/widgets/detail_dialog.dart';

class WeeklyWeatherRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const iconSize = 30.0;
    final weatherData = Provider.of<WeatherProvider>(context).items[0];
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: weatherData.daily.length,
      itemBuilder: (BuildContext context, int index) {
        String day = '';
        final iconName = 'i${weatherData.daily[index].weather[0].id}';
        final icon = CustomIcons().iconMapping[iconName];
        if (index == 0) {
          day = 'Feels Like';
        } else if (index == 1) {
          day = 'Tommorow';
        } else {
          final temp = DateTime.fromMillisecondsSinceEpoch(
              weatherData.daily[index].dt * 1000);
          day = DateFormat.MMMEd().format(temp);
        }
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () => detailDailog(context, weatherData.daily[index], index),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withAlpha(60),
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                  ),
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: iconSize,
                      height: iconSize,
                      child: Icon(
                        icon,
                        size: iconSize,
                      ),
                    ),
                    SizedBox(
                      width: iconSize,
                      height: iconSize - 12,
                      child: index == 0
                          ? Text(weatherData.daily[index].feelsLike.day
                              .toStringAsPrecision(3))
                          : Text(weatherData.daily[index].temp.day
                              .toStringAsPrecision(3)),
                    ),
                    const SizedBox(height: 5),
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
          ),
        );
      },
    );
  }
}
