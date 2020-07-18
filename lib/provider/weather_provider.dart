import 'package:flutter/foundation.dart';
import 'package:location/location.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather/models/location_model.dart';

import 'package:weather/provider/hive_db_provider.dart';

class WeatherProvider with ChangeNotifier {
  final HiveDbProvider hiveDbProvider;

  WeatherProvider({this.hiveDbProvider});

  Future<void> fetchWeatherData() async {
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
        name: "Your City",
      );
      print(locData.toString());
      await hiveDbProvider.setNewLocation(locData);
    }

    await prefs.setBool('firstRun', true);

    for (var i = 0; i < hiveDbProvider.length; i++) {
      final LocationModel locationData = hiveDbProvider.getDataAt(i);
      await hiveDbProvider.getForecast(locationData);
    }
  }
}
