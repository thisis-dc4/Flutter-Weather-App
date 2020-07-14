import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:weather/provider/weather_provider.dart';
import 'package:weather/screens/main_page.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final wProvider = Provider.of<WeatherProvider>(context);
    final future = useMemoized(() => wProvider.fetchWeatherData());
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) =>
          snapshot.connectionState == ConnectionState.waiting
              ? const Center(child: CircularProgressIndicator())
              : Scaffold(
                  body: SafeArea(
                    child: PageView.builder(
                      itemCount: wProvider.items.length,
                      itemBuilder: (context, index) => MainPage(index: index),
                    ),
                  ),
                ),
    );
  }
}
