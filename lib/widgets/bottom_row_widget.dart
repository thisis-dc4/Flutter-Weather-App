import 'package:flutter/material.dart';

class BottomRowWidget extends StatelessWidget {
  final String day, min, max;
  final IconData icon;

  const BottomRowWidget({Key key, this.day, this.min, this.max, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          day.toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
        ),
        const Divider(height: 8),
        Icon(icon, size: 50.0),
        const Divider(height: 4),
        Text(
          "$min\u{00B0} / $max\u{00B0}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
