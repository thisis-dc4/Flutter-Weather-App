import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'package:hive/hive.dart';
import 'package:http/http.dart';

import 'package:weather/confidential.dart';
import 'package:weather/models/location_model.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/exceptions/http_exception.dart';

class HiveDbProvider extends ChangeNotifier {
  final List<WeatherModel> _items = [];
  final Box<dynamic> locationDataBox = Hive.box('locationData');

  List<WeatherModel> get items {
    return _items;
  }

  dynamic get allDataIterable => locationDataBox.values;

  int get length => locationDataBox.length;

  LocationModel getDataAt(int index) {
    return locationDataBox.getAt(index);
  }

  Future<void> removeLocation(int index) async {
    await locationDataBox.deleteAt(index);
    notifyListeners();
  }

  Future<void> addNewLocation(LocationModel location) async {
    await locationDataBox.add(location);
    notifyListeners();
  }

  Future<String> loadFromAsset() async {
    final file = await rootBundle.loadString("assets/city_data/cities.json");
    return file;
  }

  Future<void> getForecast(LocationModel locationData) async {
    final String url =
        'https://api.openweathermap.org/data/2.5/onecall?lat=${locationData.latitude}&lon=${locationData.longitude}&appid=$apiKey&units=metric';

    try {
      final response = await get(url);
      final responseBody = json.decode(response.body);
      if (responseBody['cod'] != null) {
        throw HttpException("Couldn't fetch weather data.");
      }
      final data = weatherModelFromJson(response.body);
      _items.add(data);
      notifyListeners();
    } on HttpException catch (_) {
      throw HttpException("Couldn't fetch weather data.");
    } catch (e) {
      throw Exception();
    }
  }
  // Future<String> locName(double latitude, double longitude) async {
  //   final String jsonString = await loadFromAsset();
  //   final jsonFile = json.decode(jsonString);
  //   // print("jsonFile: $jsonFile");
  //   final tempResults = jsonFile
  //       .where((e) => e['coord.lat'].toString().contains(latitude.toString()));
  //   print("tempResults: $tempResults");
  //   // final result = tempResults.where((e) => e['coord.lon'].contains(longitude));
  //   // print("result: $result");
  //   // print(result);
  //   return 'Check';
  // }

  // Future<void> putAtFirst(LocationModel location) async {
  //   await locationDataBox.putAt(0, location);
  //   // print("At first");
  // }
}
