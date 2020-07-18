import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';

part 'location_model.g.dart';

@HiveType()
class LocationModel {
  @HiveField(0)
  final double latitude;

  @HiveField(1)
  final double longitude;

  @HiveField(2)
  final String name;

  LocationModel({
    @required this.latitude,
    @required this.longitude,
    @required this.name,
  });

  LocationModel copyWith({
    double latitude,
    double longitude,
    String name,
  }) {
    return LocationModel(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'name': name,
    };
  }

  static LocationModel fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return LocationModel(
      latitude: map['latitude'],
      longitude: map['longitude'],
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  static LocationModel fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() =>
      'LocationModel(latitude: $latitude, longitude: $longitude, name: $name)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is LocationModel &&
        o.latitude == latitude &&
        o.longitude == longitude &&
        o.name == name;
  }

  @override
  int get hashCode => latitude.hashCode ^ longitude.hashCode ^ name.hashCode;
}
