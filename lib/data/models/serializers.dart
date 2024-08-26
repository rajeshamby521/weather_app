import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';

import 'weather_model.dart';
import 'weather_data_model.dart';
import 'main_weather_data_model.dart';
import 'weather_description_model.dart';
import 'clouds_model.dart';
import 'wind_model.dart';
import 'rain_model.dart';
import 'sys_model.dart';
import 'city_model.dart';
import 'coord_model.dart';

part 'serializers.g.dart';

@SerializersFor([
  WeatherModel,
  WeatherDataModel,
  MainWeatherDataModel,
  WeatherDescriptionModel,
  CloudsModel,
  WindModel,
  RainModel,
  SysModel,
  CityModel,
  CoordModel,
])
final Serializers serializers = (_$serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin())).build();
