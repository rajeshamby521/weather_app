// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wind_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WindModel> _$windModelSerializer = new _$WindModelSerializer();

class _$WindModelSerializer implements StructuredSerializer<WindModel> {
  @override
  final Iterable<Type> types = const [WindModel, _$WindModel];
  @override
  final String wireName = 'WindModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, WindModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'speed',
      serializers.serialize(object.speed,
          specifiedType: const FullType(double)),
      'deg',
      serializers.serialize(object.deg, specifiedType: const FullType(int)),
      'gust',
      serializers.serialize(object.gust, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  WindModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WindModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'speed':
          result.speed = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'deg':
          result.deg = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'gust':
          result.gust = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$WindModel extends WindModel {
  @override
  final double speed;
  @override
  final int deg;
  @override
  final double gust;

  factory _$WindModel([void Function(WindModelBuilder)? updates]) =>
      (new WindModelBuilder()..update(updates))._build();

  _$WindModel._({required this.speed, required this.deg, required this.gust})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(speed, r'WindModel', 'speed');
    BuiltValueNullFieldError.checkNotNull(deg, r'WindModel', 'deg');
    BuiltValueNullFieldError.checkNotNull(gust, r'WindModel', 'gust');
  }

  @override
  WindModel rebuild(void Function(WindModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WindModelBuilder toBuilder() => new WindModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WindModel &&
        speed == other.speed &&
        deg == other.deg &&
        gust == other.gust;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, speed.hashCode);
    _$hash = $jc(_$hash, deg.hashCode);
    _$hash = $jc(_$hash, gust.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WindModel')
          ..add('speed', speed)
          ..add('deg', deg)
          ..add('gust', gust))
        .toString();
  }
}

class WindModelBuilder implements Builder<WindModel, WindModelBuilder> {
  _$WindModel? _$v;

  double? _speed;
  double? get speed => _$this._speed;
  set speed(double? speed) => _$this._speed = speed;

  int? _deg;
  int? get deg => _$this._deg;
  set deg(int? deg) => _$this._deg = deg;

  double? _gust;
  double? get gust => _$this._gust;
  set gust(double? gust) => _$this._gust = gust;

  WindModelBuilder();

  WindModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _speed = $v.speed;
      _deg = $v.deg;
      _gust = $v.gust;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WindModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WindModel;
  }

  @override
  void update(void Function(WindModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WindModel build() => _build();

  _$WindModel _build() {
    final _$result = _$v ??
        new _$WindModel._(
            speed: BuiltValueNullFieldError.checkNotNull(
                speed, r'WindModel', 'speed'),
            deg:
                BuiltValueNullFieldError.checkNotNull(deg, r'WindModel', 'deg'),
            gust: BuiltValueNullFieldError.checkNotNull(
                gust, r'WindModel', 'gust'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
