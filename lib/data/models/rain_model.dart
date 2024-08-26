import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rain_model.g.dart';

abstract class RainModel implements Built<RainModel, RainModelBuilder> {
  static Serializer<RainModel> get serializer => _$rainModelSerializer;

  double? get h3;

  RainModel._();
  factory RainModel([void Function(RainModelBuilder) updates]) = _$RainModel;
}
