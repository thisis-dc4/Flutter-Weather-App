import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:location/location.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather/data/location_data.dart' as ld;

import 'package:weather/data/weather_data.dart';
import 'package:weather/data/confidential.dart';

class WeatherProvider with ChangeNotifier {
  final List<WeatherData> _items = [];

  List<WeatherData> get items {
    return _items;
  }

  Future<void> fetchWeatherData() async {
    // await Hive.openBox('locationData');
    final locationDataBox = Hive.box('locationData');
    ld.LocationData locationData;
    bool boolVal;
    final prefs = await SharedPreferences.getInstance().then((value) {
      boolVal = value.containsKey('firstRun');
      print('boolVal: $boolVal');
      notifyListeners();
      return value;
    });
    if (!boolVal) {
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
      final locData =
          ld.LocationData(_locationData.latitude, _locationData.longitude);
      await locationDataBox.add(locData);
    }

    await prefs.setBool('firstRun', true);

    for (var i = 0; i < locationDataBox.length; i++) {
      locationData = locationDataBox.get(i) as ld.LocationData;
      // print('${locationData.latitude}\n${locationData.longitude}');
      final String url =
          'https://api.openweathermap.org/data/2.5/onecall?lat=${locationData.latitude}&lon=${locationData.longitude}&appid=$apiKey&units=metric';

      try {
        final response = await get(url);
        final data = weatherDataFromJson(response.body);
        _items.add(data);
        notifyListeners();
      } catch (e) {
        // print(e);
      }
    }
  }
}
