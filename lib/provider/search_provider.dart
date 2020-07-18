import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:weather/provider/hive_db_provider.dart';
import 'package:weather/models/location_model.dart';

class SearchProvider with ChangeNotifier {
  HiveDbProvider hiveDbProvider;

  SearchProvider({this.hiveDbProvider});

  Future<dynamic> streamParseJson(String query) async {
    final String jsonString = await hiveDbProvider.loadFromAsset();
    return json.decode(jsonString);
  }

  Future<void> addLocation(LocationModel location) async {
    hiveDbProvider.addNewLocation(location);
    await hiveDbProvider.getForecast(location);
  }
}
