import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:weather_app/data/models/weather_data_model.dart';
import 'package:weather_app/data/models/city_model.dart';

part 'weather_model.g.dart';

abstract class WeatherModel implements Built<WeatherModel, WeatherModelBuilder> {
  static Serializer<WeatherModel> get serializer => _$weatherModelSerializer;

  String get cod;
  int get message;
  int get cnt;
  BuiltList<WeatherDataModel> get list;
  CityModel get city;

  WeatherModel._();
  factory WeatherModel([void Function(WeatherModelBuilder) updates]) = _$WeatherModel;
}
