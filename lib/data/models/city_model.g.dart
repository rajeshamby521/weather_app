// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CityModel> _$cityModelSerializer = new _$CityModelSerializer();

class _$CityModelSerializer implements StructuredSerializer<CityModel> {
  @override
  final Iterable<Type> types = const [CityModel, _$CityModel];
  @override
  final String wireName = 'CityModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CityModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'coord',
      serializers.serialize(object.coord,
          specifiedType: const FullType(CoordModel)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'population',
      serializers.serialize(object.population,
          specifiedType: const FullType(int)),
      'timezone',
      serializers.serialize(object.timezone,
          specifiedType: const FullType(int)),
      'sunrise',
      serializers.serialize(object.sunrise, specifiedType: const FullType(int)),
      'sunset',
      serializers.serialize(object.sunset, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  CityModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CityModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'coord':
          result.coord.replace(serializers.deserialize(value,
              specifiedType: const FullType(CoordModel))! as CoordModel);
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'population':
          result.population = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'timezone':
          result.timezone = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'sunrise':
          result.sunrise = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'sunset':
          result.sunset = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CityModel extends CityModel {
  @override
  final int id;
  @override
  final String name;
  @override
  final CoordModel coord;
  @override
  final String country;
  @override
  final int population;
  @override
  final int timezone;
  @override
  final int sunrise;
  @override
  final int sunset;

  factory _$CityModel([void Function(CityModelBuilder)? updates]) =>
      (new CityModelBuilder()..update(updates))._build();

  _$CityModel._(
      {required this.id,
      required this.name,
      required this.coord,
      required this.country,
      required this.population,
      required this.timezone,
      required this.sunrise,
      required this.sunset})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'CityModel', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'CityModel', 'name');
    BuiltValueNullFieldError.checkNotNull(coord, r'CityModel', 'coord');
    BuiltValueNullFieldError.checkNotNull(country, r'CityModel', 'country');
    BuiltValueNullFieldError.checkNotNull(
        population, r'CityModel', 'population');
    BuiltValueNullFieldError.checkNotNull(timezone, r'CityModel', 'timezone');
    BuiltValueNullFieldError.checkNotNull(sunrise, r'CityModel', 'sunrise');
    BuiltValueNullFieldError.checkNotNull(sunset, r'CityModel', 'sunset');
  }

  @override
  CityModel rebuild(void Function(CityModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CityModelBuilder toBuilder() => new CityModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CityModel &&
        id == other.id &&
        name == other.name &&
        coord == other.coord &&
        country == other.country &&
        population == other.population &&
        timezone == other.timezone &&
        sunrise == other.sunrise &&
        sunset == other.sunset;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, coord.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, population.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, sunrise.hashCode);
    _$hash = $jc(_$hash, sunset.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CityModel')
          ..add('id', id)
          ..add('name', name)
          ..add('coord', coord)
          ..add('country', country)
          ..add('population', population)
          ..add('timezone', timezone)
          ..add('sunrise', sunrise)
          ..add('sunset', sunset))
        .toString();
  }
}

class CityModelBuilder implements Builder<CityModel, CityModelBuilder> {
  _$CityModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CoordModelBuilder? _coord;
  CoordModelBuilder get coord => _$this._coord ??= new CoordModelBuilder();
  set coord(CoordModelBuilder? coord) => _$this._coord = coord;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  int? _population;
  int? get population => _$this._population;
  set population(int? population) => _$this._population = population;

  int? _timezone;
  int? get timezone => _$this._timezone;
  set timezone(int? timezone) => _$this._timezone = timezone;

  int? _sunrise;
  int? get sunrise => _$this._sunrise;
  set sunrise(int? sunrise) => _$this._sunrise = sunrise;

  int? _sunset;
  int? get sunset => _$this._sunset;
  set sunset(int? sunset) => _$this._sunset = sunset;

  CityModelBuilder();

  CityModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _coord = $v.coord.toBuilder();
      _country = $v.country;
      _population = $v.population;
      _timezone = $v.timezone;
      _sunrise = $v.sunrise;
      _sunset = $v.sunset;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CityModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CityModel;
  }

  @override
  void update(void Function(CityModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CityModel build() => _build();

  _$CityModel _build() {
    _$CityModel _$result;
    try {
      _$result = _$v ??
          new _$CityModel._(
              id: BuiltValueNullFieldError.checkNotNull(id, r'CityModel', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'CityModel', 'name'),
              coord: coord.build(),
              country: BuiltValueNullFieldError.checkNotNull(
                  country, r'CityModel', 'country'),
              population: BuiltValueNullFieldError.checkNotNull(
                  population, r'CityModel', 'population'),
              timezone: BuiltValueNullFieldError.checkNotNull(
                  timezone, r'CityModel', 'timezone'),
              sunrise: BuiltValueNullFieldError.checkNotNull(
                  sunrise, r'CityModel', 'sunrise'),
              sunset: BuiltValueNullFieldError.checkNotNull(
                  sunset, r'CityModel', 'sunset'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coord';
        coord.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CityModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
