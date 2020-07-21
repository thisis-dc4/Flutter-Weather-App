import 'package:flutter/material.dart';

import 'package:weather/screens/detail_screen.dart';
import 'package:weather/screens/highlight_screen.dart';

class MainPage extends StatelessWidget {
  final int index;
  const MainPage({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        SummaryScreen(index: index),
        DetailScreen(index: index),
      ],
    );
  }
}
