import 'package:flutter/material.dart';

import 'package:weather/models/weather_model.dart';

Future<void> detailDialog(
  BuildContext context,
  String day,
  Temp temp,
  int index,
) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Opacity(
                opacity: 0.73,
                child: Text(
                  day,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
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
                    detailDialogRow(temp.min.toStringAsFixed(1), 'Min'),
                    detailDialogRow(temp.max.toStringAsFixed(1), 'Max'),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                detailDialogRow(temp.morn.toStringAsFixed(1), 'Morning'),
                detailDialogRow(temp.day.toStringAsFixed(1), 'Day'),
                detailDialogRow(temp.eve.toStringAsFixed(1), 'Evening'),
                detailDialogRow(temp.night.toStringAsFixed(1), 'Night'),
              ],
            )
          ],
        ),
      );
    },
  );
}

Widget detailDialogRow(String temp, String day) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Column(
      children: <Widget>[
        Opacity(
          opacity: 0.73,
          child: Text(
            day.toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ),
        const Divider(height: 8),
        Text(
          '$temp\u00B0',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ],
    ),
  );
}
