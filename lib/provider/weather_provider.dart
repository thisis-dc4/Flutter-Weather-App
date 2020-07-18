import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:location/location.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather/models/location_model.dart';

import 'package:weather/models/weather_model.dart';
import 'package:weather/confidential.dart';

class WeatherProvider with ChangeNotifier {
  final List<WeatherModel> _items = [];

  List<WeatherModel> get items {
    return _items;
  }

  Future<void> fetchWeatherData() async {
    // await Hive.openBox('locationData');
    final locationDataBox = Hive.box('locationData');
    LocationModel locationData;
    bool boolVal;
    final prefs = await SharedPreferences.getInstance().then((value) {
      boolVal = value.containsKey('firstRun');
      // print('boolVal: $boolVal');
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
      final locData = LocationModel(
        latitude: _locationData.latitude,
        longitude: _locationData.longitude,
        name: "Don't Know",
      );
      await locationDataBox.add(locData);
    }

    await prefs.setBool('firstRun', true);

    for (var i = 0; i < locationDataBox.length; i++) {
      locationData = locationDataBox.get(i) as LocationModel;
      // print('${locationData.latitude}\n${locationData.longitude}');
      await getData2(locationData);
    }
  }

  Future<void> getData2(LocationModel locationData) async {
    final String url =
        'https://api.openweathermap.org/data/2.5/onecall?lat=${locationData.latitude}&lon=${locationData.longitude}&appid=$apiKey&units=metric';

    try {
      final response = await get(url);
      final data = weatherModelFromJson(response.body);
      _items.add(data);
      notifyListeners();
    } catch (e) {
      // print(e);
    }
  }
}
