import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:weather/models/weather_model.dart';

Future<void> detailDialog(
  BuildContext context,
  Daily weatherData,
  int index,
) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      String day = '';
      if (index == 0) {
        day = 'Today';
      } else if (index == 1) {
        day = 'Tommorow';
      } else {
        final temp = DateTime.fromMillisecondsSinceEpoch(weatherData.dt * 1000);
        day = DateFormat.MMMEd().format(temp);
      }
      return Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(day),
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                const Placeholder(
                  fallbackHeight: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    detailBottomRow(weatherData.temp.min.toString(), 'Min'),
                    detailBottomRow(weatherData.temp.max.toString(), 'Max'),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                detailBottomRow(weatherData.temp.morn.toString(), 'Morning'),
                detailBottomRow(weatherData.temp.day.toString(), 'Day'),
                detailBottomRow(weatherData.temp.eve.toString(), 'Evening'),
                detailBottomRow(weatherData.temp.night.toString(), 'Night'),
              ],
            )
          ],
        ),
      );
    },
  );
}

Widget detailBottomRow(String temp, String day) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Column(
      children: <Widget>[
        Text(temp),
        Text(day),
      ],
    ),
  );
}
