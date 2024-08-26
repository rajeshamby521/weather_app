// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_weather_data_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MainWeatherDataModel> _$mainWeatherDataModelSerializer =
    new _$MainWeatherDataModelSerializer();

class _$MainWeatherDataModelSerializer
    implements StructuredSerializer<MainWeatherDataModel> {
  @override
  final Iterable<Type> types = const [
    MainWeatherDataModel,
    _$MainWeatherDataModel
  ];
  @override
  final String wireName = 'MainWeatherDataModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, MainWeatherDataModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'temp',
      serializers.serialize(object.temp, specifiedType: const FullType(double)),
      'feels_like',
      serializers.serialize(object.feels_like,
          specifiedType: const FullType(double)),
      'temp_min',
      serializers.serialize(object.temp_min,
          specifiedType: const FullType(double)),
      'temp_max',
      serializers.serialize(object.temp_max,
          specifiedType: const FullType(double)),
      'pressure',
      serializers.serialize(object.pressure,
          specifiedType: const FullType(int)),
      'sea_level',
      serializers.serialize(object.sea_level,
          specifiedType: const FullType(int)),
      'grnd_level',
      serializers.serialize(object.grnd_level,
          specifiedType: const FullType(int)),
      'humidity',
      serializers.serialize(object.humidity,
          specifiedType: const FullType(int)),
      'temp_kf',
      serializers.serialize(object.temp_kf,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  MainWeatherDataModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MainWeatherDataModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'temp':
          result.temp = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'feels_like':
          result.feels_like = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'temp_min':
          result.temp_min = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'temp_max':
          result.temp_max = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'pressure':
          result.pressure = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'sea_level':
          result.sea_level = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'grnd_level':
          result.grnd_level = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'temp_kf':
          result.temp_kf = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$MainWeatherDataModel extends MainWeatherDataModel {
  @override
  final double temp;
  @override
  final double feels_like;
  @override
  final double temp_min;
  @override
  final double temp_max;
  @override
  final int pressure;
  @override
  final int sea_level;
  @override
  final int grnd_level;
  @override
  final int humidity;
  @override
  final double temp_kf;

  factory _$MainWeatherDataModel(
          [void Function(MainWeatherDataModelBuilder)? updates]) =>
      (new MainWeatherDataModelBuilder()..update(updates))._build();

  _$MainWeatherDataModel._(
      {required this.temp,
      required this.feels_like,
      required this.temp_min,
      required this.temp_max,
      required this.pressure,
      required this.sea_level,
      required this.grnd_level,
      required this.humidity,
      required this.temp_kf})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        temp, r'MainWeatherDataModel', 'temp');
    BuiltValueNullFieldError.checkNotNull(
        feels_like, r'MainWeatherDataModel', 'feels_like');
    BuiltValueNullFieldError.checkNotNull(
        temp_min, r'MainWeatherDataModel', 'temp_min');
    BuiltValueNullFieldError.checkNotNull(
        temp_max, r'MainWeatherDataModel', 'temp_max');
    BuiltValueNullFieldError.checkNotNull(
        pressure, r'MainWeatherDataModel', 'pressure');
    BuiltValueNullFieldError.checkNotNull(
        sea_level, r'MainWeatherDataModel', 'sea_level');
    BuiltValueNullFieldError.checkNotNull(
        grnd_level, r'MainWeatherDataModel', 'grnd_level');
    BuiltValueNullFieldError.checkNotNull(
        humidity, r'MainWeatherDataModel', 'humidity');
    BuiltValueNullFieldError.checkNotNull(
        temp_kf, r'MainWeatherDataModel', 'temp_kf');
  }

  @override
  MainWeatherDataModel rebuild(
          void Function(MainWeatherDataModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MainWeatherDataModelBuilder toBuilder() =>
      new MainWeatherDataModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MainWeatherDataModel &&
        temp == other.temp &&
        feels_like == other.feels_like &&
        temp_min == other.temp_min &&
        temp_max == other.temp_max &&
        pressure == other.pressure &&
        sea_level == other.sea_level &&
        grnd_level == other.grnd_level &&
        humidity == other.humidity &&
        temp_kf == other.temp_kf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, temp.hashCode);
    _$hash = $jc(_$hash, feels_like.hashCode);
    _$hash = $jc(_$hash, temp_min.hashCode);
    _$hash = $jc(_$hash, temp_max.hashCode);
    _$hash = $jc(_$hash, pressure.hashCode);
    _$hash = $jc(_$hash, sea_level.hashCode);
    _$hash = $jc(_$hash, grnd_level.hashCode);
    _$hash = $jc(_$hash, humidity.hashCode);
    _$hash = $jc(_$hash, temp_kf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MainWeatherDataModel')
          ..add('temp', temp)
          ..add('feels_like', feels_like)
          ..add('temp_min', temp_min)
          ..add('temp_max', temp_max)
          ..add('pressure', pressure)
          ..add('sea_level', sea_level)
          ..add('grnd_level', grnd_level)
          ..add('humidity', humidity)
          ..add('temp_kf', temp_kf))
        .toString();
  }
}

class MainWeatherDataModelBuilder
    implements Builder<MainWeatherDataModel, MainWeatherDataModelBuilder> {
  _$MainWeatherDataModel? _$v;

  double? _temp;
  double? get temp => _$this._temp;
  set temp(double? temp) => _$this._temp = temp;

  double? _feels_like;
  double? get feels_like => _$this._feels_like;
  set feels_like(double? feels_like) => _$this._feels_like = feels_like;

  double? _temp_min;
  double? get temp_min => _$this._temp_min;
  set temp_min(double? temp_min) => _$this._temp_min = temp_min;

  double? _temp_max;
  double? get temp_max => _$this._temp_max;
  set temp_max(double? temp_max) => _$this._temp_max = temp_max;

  int? _pressure;
  int? get pressure => _$this._pressure;
  set pressure(int? pressure) => _$this._pressure = pressure;

  int? _sea_level;
  int? get sea_level => _$this._sea_level;
  set sea_level(int? sea_level) => _$this._sea_level = sea_level;

  int? _grnd_level;
  int? get grnd_level => _$this._grnd_level;
  set grnd_level(int? grnd_level) => _$this._grnd_level = grnd_level;

  int? _humidity;
  int? get humidity => _$this._humidity;
  set humidity(int? humidity) => _$this._humidity = humidity;

  double? _temp_kf;
  double? get temp_kf => _$this._temp_kf;
  set temp_kf(double? temp_kf) => _$this._temp_kf = temp_kf;

  MainWeatherDataModelBuilder();

  MainWeatherDataModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _temp = $v.temp;
      _feels_like = $v.feels_like;
      _temp_min = $v.temp_min;
      _temp_max = $v.temp_max;
      _pressure = $v.pressure;
      _sea_level = $v.sea_level;
      _grnd_level = $v.grnd_level;
      _humidity = $v.humidity;
      _temp_kf = $v.temp_kf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MainWeatherDataModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MainWeatherDataModel;
  }

  @override
  void update(void Function(MainWeatherDataModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MainWeatherDataModel build() => _build();

  _$MainWeatherDataModel _build() {
    final _$result = _$v ??
        new _$MainWeatherDataModel._(
            temp: BuiltValueNullFieldError.checkNotNull(
                temp, r'MainWeatherDataModel', 'temp'),
            feels_like: BuiltValueNullFieldError.checkNotNull(
                feels_like, r'MainWeatherDataModel', 'feels_like'),
            temp_min: BuiltValueNullFieldError.checkNotNull(
                temp_min, r'MainWeatherDataModel', 'temp_min'),
            temp_max: BuiltValueNullFieldError.checkNotNull(
                temp_max, r'MainWeatherDataModel', 'temp_max'),
            pressure: BuiltValueNullFieldError.checkNotNull(
                pressure, r'MainWeatherDataModel', 'pressure'),
            sea_level: BuiltValueNullFieldError.checkNotNull(
                sea_level, r'MainWeatherDataModel', 'sea_level'),
            grnd_level: BuiltValueNullFieldError.checkNotNull(
                grnd_level, r'MainWeatherDataModel', 'grnd_level'),
            humidity: BuiltValueNullFieldError.checkNotNull(
                humidity, r'MainWeatherDataModel', 'humidity'),
            temp_kf:
                BuiltValueNullFieldError.checkNotNull(temp_kf, r'MainWeatherDataModel', 'temp_kf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
