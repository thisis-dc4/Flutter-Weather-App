import 'package:flutter/material.dart';

Widget roundedInfoBox(
    BuildContext context, String text, String number, IconData icon) {
  final width = MediaQuery.of(context).size.width * 0.3;
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
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
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              // width: width,
              child: Icon(icon),
            ),
            Opacity(
              opacity: 0.75,
              child: SizedBox(
                // width: width,
                child: Text(text),
              ),
            ),
            Text(number),
          ],
        ),
      ),
    ),
  );
}
