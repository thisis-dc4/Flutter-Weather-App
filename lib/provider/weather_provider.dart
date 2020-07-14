import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

import 'package:weather/data/weather_data.dart';
import 'package:weather/provider/confidential.dart';

class WeatherProvider with ChangeNotifier {
  final List<WeatherData> _items = [];

  List<WeatherData> get items {
    return _items;
  }

  Future<void> fetchWeatherData() async {
    const String url =
        'https://api.openweathermap.org/data/2.5/onecall?lat=28.61282&lon=77.23114&appid=$apiKey&units=metric';
    try {
      final response = await get(url);
      final data = weatherDataFromJson(response.body);
      _items.add(data);
      notifyListeners();
      print(json.decode(response.body));
    } catch (e) {
      print(e);
    }
  }
}
