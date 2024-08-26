// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_data_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherDataModel> _$weatherDataModelSerializer =
    new _$WeatherDataModelSerializer();

class _$WeatherDataModelSerializer
    implements StructuredSerializer<WeatherDataModel> {
  @override
  final Iterable<Type> types = const [WeatherDataModel, _$WeatherDataModel];
  @override
  final String wireName = 'WeatherDataModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherDataModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'dt',
      serializers.serialize(object.dt, specifiedType: const FullType(int)),
      'main',
      serializers.serialize(object.main,
          specifiedType: const FullType(MainWeatherDataModel)),
      'weather',
      serializers.serialize(object.weather,
          specifiedType: const FullType(
              BuiltList, const [const FullType(WeatherDescriptionModel)])),
      'clouds',
      serializers.serialize(object.clouds,
          specifiedType: const FullType(CloudsModel)),
      'wind',
      serializers.serialize(object.wind,
          specifiedType: const FullType(WindModel)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(int)),
      'pop',
      serializers.serialize(object.pop, specifiedType: const FullType(double)),
      'sys',
      serializers.serialize(object.sys,
          specifiedType: const FullType(SysModel)),
      'dt_txt',
      serializers.serialize(object.dt_txt,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.rain;
    if (value != null) {
      result
        ..add('rain')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(RainModel)));
    }
    return result;
  }

  @override
  WeatherDataModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherDataModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dt':
          result.dt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'main':
          result.main.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MainWeatherDataModel))!
              as MainWeatherDataModel);
          break;
        case 'weather':
          result.weather.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(WeatherDescriptionModel)
              ]))! as BuiltList<Object?>);
          break;
        case 'clouds':
          result.clouds.replace(serializers.deserialize(value,
              specifiedType: const FullType(CloudsModel))! as CloudsModel);
          break;
        case 'wind':
          result.wind.replace(serializers.deserialize(value,
              specifiedType: const FullType(WindModel))! as WindModel);
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'pop':
          result.pop = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'rain':
          result.rain.replace(serializers.deserialize(value,
              specifiedType: const FullType(RainModel))! as RainModel);
          break;
        case 'sys':
          result.sys.replace(serializers.deserialize(value,
              specifiedType: const FullType(SysModel))! as SysModel);
          break;
        case 'dt_txt':
          result.dt_txt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherDataModel extends WeatherDataModel {
  @override
  final int dt;
  @override
  final MainWeatherDataModel main;
  @override
  final BuiltList<WeatherDescriptionModel> weather;
  @override
  final CloudsModel clouds;
  @override
  final WindModel wind;
  @override
  final int visibility;
  @override
  final double pop;
  @override
  final RainModel? rain;
  @override
  final SysModel sys;
  @override
  final String dt_txt;

  factory _$WeatherDataModel(
          [void Function(WeatherDataModelBuilder)? updates]) =>
      (new WeatherDataModelBuilder()..update(updates))._build();

  _$WeatherDataModel._(
      {required this.dt,
      required this.main,
      required this.weather,
      required this.clouds,
      required this.wind,
      required this.visibility,
      required this.pop,
      this.rain,
      required this.sys,
      required this.dt_txt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dt, r'WeatherDataModel', 'dt');
    BuiltValueNullFieldError.checkNotNull(main, r'WeatherDataModel', 'main');
    BuiltValueNullFieldError.checkNotNull(
        weather, r'WeatherDataModel', 'weather');
    BuiltValueNullFieldError.checkNotNull(
        clouds, r'WeatherDataModel', 'clouds');
    BuiltValueNullFieldError.checkNotNull(wind, r'WeatherDataModel', 'wind');
    BuiltValueNullFieldError.checkNotNull(
        visibility, r'WeatherDataModel', 'visibility');
    BuiltValueNullFieldError.checkNotNull(pop, r'WeatherDataModel', 'pop');
    BuiltValueNullFieldError.checkNotNull(sys, r'WeatherDataModel', 'sys');
    BuiltValueNullFieldError.checkNotNull(
        dt_txt, r'WeatherDataModel', 'dt_txt');
  }

  @override
  WeatherDataModel rebuild(void Function(WeatherDataModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherDataModelBuilder toBuilder() =>
      new WeatherDataModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherDataModel &&
        dt == other.dt &&
        main == other.main &&
        weather == other.weather &&
        clouds == other.clouds &&
        wind == other.wind &&
        visibility == other.visibility &&
        pop == other.pop &&
        rain == other.rain &&
        sys == other.sys &&
        dt_txt == other.dt_txt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dt.hashCode);
    _$hash = $jc(_$hash, main.hashCode);
    _$hash = $jc(_$hash, weather.hashCode);
    _$hash = $jc(_$hash, clouds.hashCode);
    _$hash = $jc(_$hash, wind.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, pop.hashCode);
    _$hash = $jc(_$hash, rain.hashCode);
    _$hash = $jc(_$hash, sys.hashCode);
    _$hash = $jc(_$hash, dt_txt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherDataModel')
          ..add('dt', dt)
          ..add('main', main)
          ..add('weather', weather)
          ..add('clouds', clouds)
          ..add('wind', wind)
          ..add('visibility', visibility)
          ..add('pop', pop)
          ..add('rain', rain)
          ..add('sys', sys)
          ..add('dt_txt', dt_txt))
        .toString();
  }
}

class WeatherDataModelBuilder
    implements Builder<WeatherDataModel, WeatherDataModelBuilder> {
  _$WeatherDataModel? _$v;

  int? _dt;
  int? get dt => _$this._dt;
  set dt(int? dt) => _$this._dt = dt;

  MainWeatherDataModelBuilder? _main;
  MainWeatherDataModelBuilder get main =>
      _$this._main ??= new MainWeatherDataModelBuilder();
  set main(MainWeatherDataModelBuilder? main) => _$this._main = main;

  ListBuilder<WeatherDescriptionModel>? _weather;
  ListBuilder<WeatherDescriptionModel> get weather =>
      _$this._weather ??= new ListBuilder<WeatherDescriptionModel>();
  set weather(ListBuilder<WeatherDescriptionModel>? weather) =>
      _$this._weather = weather;

  CloudsModelBuilder? _clouds;
  CloudsModelBuilder get clouds => _$this._clouds ??= new CloudsModelBuilder();
  set clouds(CloudsModelBuilder? clouds) => _$this._clouds = clouds;

  WindModelBuilder? _wind;
  WindModelBuilder get wind => _$this._wind ??= new WindModelBuilder();
  set wind(WindModelBuilder? wind) => _$this._wind = wind;

  int? _visibility;
  int? get visibility => _$this._visibility;
  set visibility(int? visibility) => _$this._visibility = visibility;

  double? _pop;
  double? get pop => _$this._pop;
  set pop(double? pop) => _$this._pop = pop;

  RainModelBuilder? _rain;
  RainModelBuilder get rain => _$this._rain ??= new RainModelBuilder();
  set rain(RainModelBuilder? rain) => _$this._rain = rain;

  SysModelBuilder? _sys;
  SysModelBuilder get sys => _$this._sys ??= new SysModelBuilder();
  set sys(SysModelBuilder? sys) => _$this._sys = sys;

  String? _dt_txt;
  String? get dt_txt => _$this._dt_txt;
  set dt_txt(String? dt_txt) => _$this._dt_txt = dt_txt;

  WeatherDataModelBuilder();

  WeatherDataModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dt = $v.dt;
      _main = $v.main.toBuilder();
      _weather = $v.weather.toBuilder();
      _clouds = $v.clouds.toBuilder();
      _wind = $v.wind.toBuilder();
      _visibility = $v.visibility;
      _pop = $v.pop;
      _rain = $v.rain?.toBuilder();
      _sys = $v.sys.toBuilder();
      _dt_txt = $v.dt_txt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherDataModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherDataModel;
  }

  @override
  void update(void Function(WeatherDataModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherDataModel build() => _build();

  _$WeatherDataModel _build() {
    _$WeatherDataModel _$result;
    try {
      _$result = _$v ??
          new _$WeatherDataModel._(
              dt: BuiltValueNullFieldError.checkNotNull(
                  dt, r'WeatherDataModel', 'dt'),
              main: main.build(),
              weather: weather.build(),
              clouds: clouds.build(),
              wind: wind.build(),
              visibility: BuiltValueNullFieldError.checkNotNull(
                  visibility, r'WeatherDataModel', 'visibility'),
              pop: BuiltValueNullFieldError.checkNotNull(
                  pop, r'WeatherDataModel', 'pop'),
              rain: _rain?.build(),
              sys: sys.build(),
              dt_txt: BuiltValueNullFieldError.checkNotNull(
                  dt_txt, r'WeatherDataModel', 'dt_txt'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'main';
        main.build();
        _$failedField = 'weather';
        weather.build();
        _$failedField = 'clouds';
        clouds.build();
        _$failedField = 'wind';
        wind.build();

        _$failedField = 'rain';
        _rain?.build();
        _$failedField = 'sys';
        sys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WeatherDataModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
