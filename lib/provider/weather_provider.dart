import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:location/location.dart';

import 'package:weather/data/weather_data.dart';
import 'package:weather/provider/confidential.dart';

class WeatherProvider with ChangeNotifier {
  final List<WeatherData> _items = [];

  List<WeatherData> get items {
    return _items;
  }

  Future<void> fetchWeatherData() async {
    final Location location = Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {}
    }
    _locationData = await location.getLocation();
    // print('${_locationData.latitude}\n${_locationData.longitude}');
    final String url =
        'https://api.openweathermap.org/data/2.5/onecall?lat=${_locationData.latitude}&lon=${_locationData.longitude}&appid=$apiKey&units=metric';
    // print('Ahead');
    try {
      final response = await get(url);
      final data = weatherDataFromJson(response.body);
      _items.add(data);
      notifyListeners();
      // print(json.decode(response.body));
    } catch (e) {
      // print(e);
    }
  }
}
