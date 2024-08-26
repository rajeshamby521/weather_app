import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'coord_model.dart';

part 'city_model.g.dart';

abstract class CityModel implements Built<CityModel, CityModelBuilder> {
  static Serializer<CityModel> get serializer => _$cityModelSerializer;

  int get id;
  String get name;
  CoordModel get coord;
  String get country;
  int get population;
  int get timezone;
  int get sunrise;
  int get sunset;

  CityModel._();
  factory CityModel([void Function(CityModelBuilder) updates]) = _$CityModel;
}
// TODO Implement this library.