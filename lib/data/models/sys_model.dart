import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sys_model.g.dart';

abstract class SysModel implements Built<SysModel, SysModelBuilder> {
  static Serializer<SysModel> get serializer => _$sysModelSerializer;

  String get pod;

  SysModel._();
  factory SysModel([void Function(SysModelBuilder) updates]) = _$SysModel;
}
