import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'coord_model.g.dart';

abstract class CoordModel implements Built<CoordModel, CoordModelBuilder> {
  static Serializer<CoordModel> get serializer => _$coordModelSerializer;

  double get lat;
  double get lon;

  CoordModel._();
  factory CoordModel([void Function(CoordModelBuilder) updates]) = _$CoordModel;
}
