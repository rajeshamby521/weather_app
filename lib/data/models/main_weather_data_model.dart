import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'main_weather_data_model.g.dart';

abstract class MainWeatherDataModel implements Built<MainWeatherDataModel, MainWeatherDataModelBuilder> {
  static Serializer<MainWeatherDataModel> get serializer => _$mainWeatherDataModelSerializer;

  double get temp;
  double get feels_like;
  double get temp_min;
  double get temp_max;
  int get pressure;
  int get sea_level;
  int get grnd_level;
  int get humidity;
  double get temp_kf;

  MainWeatherDataModel._();
  factory MainWeatherDataModel([void Function(MainWeatherDataModelBuilder) updates]) = _$MainWeatherDataModel;
}
