import 'package:flutter/material.dart';

Widget roundedInfoBox(
  BuildContext context,
  String text,
  String number,
  IconData icon,
) {
  final width = MediaQuery.of(context).size.width * 0.29;
  return Container(
    width: width,
    child: AspectRatio(
      aspectRatio: 1.1,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(icon, size: 35),
            Opacity(
              opacity: 0.75,
              child: Text(
                text,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              number,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    ),
  );
}
