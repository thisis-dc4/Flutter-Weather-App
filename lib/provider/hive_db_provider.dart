import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart';
import 'package:weather/confidential.dart';
import 'package:weather/models/location_model.dart';
import 'package:weather/models/weather_model.dart';

class HiveDbProvider extends ChangeNotifier {
  final List<WeatherModel> _items = [];
  final Box<dynamic> locationDataBox = Hive.box('locationData');

  List<WeatherModel> get items {
    return _items;
  }

  Iterable<LocationModel> get allDataIterable => locationDataBox.values;

  int get length => locationDataBox.length;

  LocationModel getDataAt(int index) {
    return locationDataBox.getAt(index);
  }

  Future<void> setNewLocation(LocationModel location) async {
    await locationDataBox.add(location);
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
      final data = weatherModelFromJson(response.body);
      _items.add(data);
      notifyListeners();
    } catch (e) {
      print(e);
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
