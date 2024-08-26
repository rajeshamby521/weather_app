import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wind_model.g.dart';

abstract class WindModel implements Built<WindModel, WindModelBuilder> {
  static Serializer<WindModel> get serializer => _$windModelSerializer;

  double get speed;
  int get deg;
  double get gust;

  WindModel._();
  factory WindModel([void Function(WindModelBuilder) updates]) = _$WindModel;
}
