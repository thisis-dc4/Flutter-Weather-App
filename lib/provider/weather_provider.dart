import 'package:flutter/foundation.dart';

import 'package:location/location.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather/exceptions/location_exception.dart';

import 'package:weather/provider/hive_db_provider.dart';
import 'package:weather/models/location_model.dart';

class WeatherProvider with ChangeNotifier {
  final HiveDbProvider hiveDbProvider;

  WeatherProvider({this.hiveDbProvider});

  Future<void> checkFirstRun() async {
    bool boolVal;
    final prefs = await SharedPreferences.getInstance().then((value) {
      boolVal = value.containsKey('firstRun');
      notifyListeners();
      return value;
    });

    if (!boolVal) {
      await fetchUserLocation();
    }
    await prefs.setBool('firstRun', false);

    await fetchWeatherData();
  }

  Future<void> fetchUserLocation() async {
    final Location location = Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    try {
      _serviceEnabled = await location.serviceEnabled();
      if (!_serviceEnabled) {
        _serviceEnabled = await location.requestService();
        if (!_serviceEnabled) {
          throw LocationException();
        }
      }
      _permissionGranted = await location.hasPermission();
      if (_permissionGranted == PermissionStatus.denied) {
        _permissionGranted = await location.requestPermission();
        if (_permissionGranted != PermissionStatus.denied) {
          throw LocationException();
        }
      }

      _locationData = await location.getLocation();
      final locData = LocationModel(
        latitude: _locationData.latitude,
        longitude: _locationData.longitude,
        name: "Your City",
      );

      await hiveDbProvider.addNewLocation(locData);
    } on LocationException catch (_) {
      throw LocationException();
    }
  }

  Future<void> fetchWeatherData() async {
    for (var i = 0; i < hiveDbProvider.length; i++) {
      final LocationModel locationData = hiveDbProvider.getDataAt(i);
      await hiveDbProvider.getForecast(locationData);
    }
  }
}
