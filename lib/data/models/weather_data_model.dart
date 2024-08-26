import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:weather_app/data/models/main_weather_data_model.dart';
import 'package:weather_app/data/models/weather_description_model.dart';
import 'package:weather_app/data/models/clouds_model.dart';
import 'package:weather_app/data/models/wind_model.dart';
import 'package:weather_app/data/models/rain_model.dart';
import 'package:weather_app/data/models/sys_model.dart';

part 'weather_data_model.g.dart';

abstract class WeatherDataModel implements Built<WeatherDataModel, WeatherDataModelBuilder> {
  static Serializer<WeatherDataModel> get serializer => _$weatherDataModelSerializer;

  int get dt;
  MainWeatherDataModel get main;
  BuiltList<WeatherDescriptionModel> get weather;
  CloudsModel get clouds;
  WindModel get wind;
  int get visibility;
  double get pop;
  RainModel?get rain;
  SysModel get sys;
  String get dt_txt;

  WeatherDataModel._();
  factory WeatherDataModel([void Function(WeatherDataModelBuilder) updates]) = _$WeatherDataModel;
}
