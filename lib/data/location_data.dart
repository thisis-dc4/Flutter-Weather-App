import 'package:hive/hive.dart';

part 'location_data.g.dart';

@HiveType()
class LocationData {
  @HiveField(0)
  final double latitude;

  @HiveField(1)
  final double longitude;

  LocationData(this.latitude, this.longitude);
}
