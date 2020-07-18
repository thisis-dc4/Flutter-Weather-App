import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:weather/models/location_model.dart';

class HiveDbProvider extends ChangeNotifier {
  final locationDataBox = Hive.box('locationData');

  Iterable<LocationModel> get allDataIterable => locationDataBox.values;

  LocationModel getDataAt(int index) {
    return locationDataBox.getAt(index);
  }

  Future<void> setNewLocation(LocationModel location) async {
    await locationDataBox.add(location);
  }
}
