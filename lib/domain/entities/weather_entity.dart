import 'package:built_collection/built_collection.dart';
import 'package:weather_app/domain/entities/weather_data_entity.dart';

import 'city_entity.dart';

class WeatherEntity {
  final BuiltList<WeatherDataEntity> forecast;
  final CityEntity city;

  WeatherEntity({required this.forecast, required this.city});

  // Converting WeatherEntity to JSON
  Map<String, dynamic> toJson() {
    return {
      'forecast': forecast.map((item) => item.toJson()).toList(),
      'city': city.toJson(),
    };
  }

  // Creating WeatherEntity from JSON
  factory WeatherEntity.fromJson(Map<String, dynamic> json) {
    return WeatherEntity(
      forecast: (json['forecast'] as BuiltList)
          .map((item) => WeatherDataEntity.fromJson(item))
          .toBuiltList(),
      city: CityEntity.fromJson(json['city']),
    );
  }
}
