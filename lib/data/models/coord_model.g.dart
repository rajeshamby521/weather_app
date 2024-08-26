// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coord_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CoordModel> _$coordModelSerializer = new _$CoordModelSerializer();

class _$CoordModelSerializer implements StructuredSerializer<CoordModel> {
  @override
  final Iterable<Type> types = const [CoordModel, _$CoordModel];
  @override
  final String wireName = 'CoordModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CoordModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(double)),
      'lon',
      serializers.serialize(object.lon, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  CoordModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoordModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'lon':
          result.lon = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$CoordModel extends CoordModel {
  @override
  final double lat;
  @override
  final double lon;

  factory _$CoordModel([void Function(CoordModelBuilder)? updates]) =>
      (new CoordModelBuilder()..update(updates))._build();

  _$CoordModel._({required this.lat, required this.lon}) : super._() {
    BuiltValueNullFieldError.checkNotNull(lat, r'CoordModel', 'lat');
    BuiltValueNullFieldError.checkNotNull(lon, r'CoordModel', 'lon');
  }

  @override
  CoordModel rebuild(void Function(CoordModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoordModelBuilder toBuilder() => new CoordModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoordModel && lat == other.lat && lon == other.lon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CoordModel')
          ..add('lat', lat)
          ..add('lon', lon))
        .toString();
  }
}

class CoordModelBuilder implements Builder<CoordModel, CoordModelBuilder> {
  _$CoordModel? _$v;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _lon;
  double? get lon => _$this._lon;
  set lon(double? lon) => _$this._lon = lon;

  CoordModelBuilder();

  CoordModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lat = $v.lat;
      _lon = $v.lon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoordModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CoordModel;
  }

  @override
  void update(void Function(CoordModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CoordModel build() => _build();

  _$CoordModel _build() {
    final _$result = _$v ??
        new _$CoordModel._(
            lat: BuiltValueNullFieldError.checkNotNull(
                lat, r'CoordModel', 'lat'),
            lon: BuiltValueNullFieldError.checkNotNull(
                lon, r'CoordModel', 'lon'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
