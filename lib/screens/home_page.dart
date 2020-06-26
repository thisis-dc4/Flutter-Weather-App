import 'package:flutter/material.dart';
import 'package:weather/screens/main_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: [
            MainPage(),
          ],
        ),
      ),
    );
  }
}
