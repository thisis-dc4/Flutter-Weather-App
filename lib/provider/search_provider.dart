import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:weather/models/location_model.dart';
import 'package:weather/provider/hive_db_provider.dart';

class SearchProvider with ChangeNotifier {
  final locationDataBox = Hive.box('locationData');
  HiveDbProvider hiveDbProvider;

  SearchProvider({this.hiveDbProvider});

  Future<dynamic> streamParseJson(String query) async {
    final String jsonString = await hiveDbProvider.loadFromAsset();
    return json.decode(jsonString);
  }

  Future<void> addLocation(LocationModel location) async {
    locationDataBox.add(location);
    await hiveDbProvider.getForecast(location);
  }
}
