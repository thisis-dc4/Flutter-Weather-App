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
        Opacity(
          opacity: 0.73,
          child: Text(
            day,
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 13),
          ),
        ),
        const Divider(height: 8),
        Icon(icon, size: 50.0),
        const Divider(height: 4),
        Text(
          "$min\u00B0 / $max\u00B0",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
