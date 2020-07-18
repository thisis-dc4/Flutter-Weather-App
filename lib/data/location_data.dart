import 'package:hive/hive.dart';

part 'location_data.g.dart';

@HiveType(typeId: 0)
class LocationData {
  @HiveField(0)
  final double latitude;

  @HiveField(1)
  final double longitude;

  @HiveField(2)
  final String name;

  LocationData(this.latitude, this.longitude, this.name);
}
