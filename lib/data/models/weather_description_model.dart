import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weather_description_model.g.dart';

abstract class WeatherDescriptionModel implements Built<WeatherDescriptionModel, WeatherDescriptionModelBuilder> {
  static Serializer<WeatherDescriptionModel> get serializer => _$weatherDescriptionModelSerializer;

  int get id;
  String get main;
  String get description;
  String get icon;

  WeatherDescriptionModel._();
  factory WeatherDescriptionModel([void Function(WeatherDescriptionModelBuilder) updates]) = _$WeatherDescriptionModel;
}
