import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'clouds_model.g.dart';

abstract class CloudsModel implements Built<CloudsModel, CloudsModelBuilder> {
  static Serializer<CloudsModel> get serializer => _$cloudsModelSerializer;

  int get all;

  CloudsModel._();
  factory CloudsModel([void Function(CloudsModelBuilder) updates]) = _$CloudsModel;
}
