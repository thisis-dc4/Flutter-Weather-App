import 'dart:convert';

import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:hive/hive.dart';
import 'package:weather/models/location_model.dart';
import 'package:weather/provider/weather_provider.dart';

class SearchProvider with ChangeNotifier {
  final AsyncMemoizer _memoizer = AsyncMemoizer();
  final locationDataBox = Hive.box('locationData');
  WeatherProvider weatherProvider;

  SearchProvider({this.weatherProvider});

  Future<String> _loadFromAsset() async {
    // print('Here');
    final file = await rootBundle.loadString("assets/city_data/cities.json");
    // print(file);
    return file;
  }

  Future<dynamic> parseJson() async {
    return _memoizer.runOnce(
      () async {
        final String jsonString = await _loadFromAsset();
        // jsonFile = ;
        // print(jsonFile[0]['name']);
        return json.decode(jsonString);
      },
    );
    // notifyListeners();
  }

  Future<dynamic> streamParseJson(String query) async {
    final String jsonString = await _loadFromAsset();
    // jsonFile = json.decode(jsonString);
    // final results = jsonFile
    //     .where((e) => e['name'].toString().toLowerCase().contains(query));
    // print(results.map((e) => e['name']).toList());
    // results.forEach((element) {});
    return json.decode(jsonString);
  }

  void addLocation(LocationModel location) {
    final length = locationDataBox.length;
    locationDataBox.add(location);
    print('Length: $length');
    print(location.latitude);
    // locationDataBox.getAt(length);
    weatherProvider.getData2(location);
  }
}
