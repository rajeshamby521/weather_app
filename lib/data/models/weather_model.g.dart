// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherModel> _$weatherModelSerializer =
    new _$WeatherModelSerializer();

class _$WeatherModelSerializer implements StructuredSerializer<WeatherModel> {
  @override
  final Iterable<Type> types = const [WeatherModel, _$WeatherModel];
  @override
  final String wireName = 'WeatherModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'cod',
      serializers.serialize(object.cod, specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message, specifiedType: const FullType(int)),
      'cnt',
      serializers.serialize(object.cnt, specifiedType: const FullType(int)),
      'list',
      serializers.serialize(object.list,
          specifiedType: const FullType(
              BuiltList, const [const FullType(WeatherDataModel)])),
      'city',
      serializers.serialize(object.city,
          specifiedType: const FullType(CityModel)),
    ];

    return result;
  }

  @override
  WeatherModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cod':
          result.cod = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'cnt':
          result.cnt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'list':
          result.list.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WeatherDataModel)]))!
              as BuiltList<Object?>);
          break;
        case 'city':
          result.city.replace(serializers.deserialize(value,
              specifiedType: const FullType(CityModel))! as CityModel);
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherModel extends WeatherModel {
  @override
  final String cod;
  @override
  final int message;
  @override
  final int cnt;
  @override
  final BuiltList<WeatherDataModel> list;
  @override
  final CityModel city;

  factory _$WeatherModel([void Function(WeatherModelBuilder)? updates]) =>
      (new WeatherModelBuilder()..update(updates))._build();

  _$WeatherModel._(
      {required this.cod,
      required this.message,
      required this.cnt,
      required this.list,
      required this.city})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(cod, r'WeatherModel', 'cod');
    BuiltValueNullFieldError.checkNotNull(message, r'WeatherModel', 'message');
    BuiltValueNullFieldError.checkNotNull(cnt, r'WeatherModel', 'cnt');
    BuiltValueNullFieldError.checkNotNull(list, r'WeatherModel', 'list');
    BuiltValueNullFieldError.checkNotNull(city, r'WeatherModel', 'city');
  }

  @override
  WeatherModel rebuild(void Function(WeatherModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherModelBuilder toBuilder() => new WeatherModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherModel &&
        cod == other.cod &&
        message == other.message &&
        cnt == other.cnt &&
        list == other.list &&
        city == other.city;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cod.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, cnt.hashCode);
    _$hash = $jc(_$hash, list.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherModel')
          ..add('cod', cod)
          ..add('message', message)
          ..add('cnt', cnt)
          ..add('list', list)
          ..add('city', city))
        .toString();
  }
}

class WeatherModelBuilder
    implements Builder<WeatherModel, WeatherModelBuilder> {
  _$WeatherModel? _$v;

  String? _cod;
  String? get cod => _$this._cod;
  set cod(String? cod) => _$this._cod = cod;

  int? _message;
  int? get message => _$this._message;
  set message(int? message) => _$this._message = message;

  int? _cnt;
  int? get cnt => _$this._cnt;
  set cnt(int? cnt) => _$this._cnt = cnt;

  ListBuilder<WeatherDataModel>? _list;
  ListBuilder<WeatherDataModel> get list =>
      _$this._list ??= new ListBuilder<WeatherDataModel>();
  set list(ListBuilder<WeatherDataModel>? list) => _$this._list = list;

  CityModelBuilder? _city;
  CityModelBuilder get city => _$this._city ??= new CityModelBuilder();
  set city(CityModelBuilder? city) => _$this._city = city;

  WeatherModelBuilder();

  WeatherModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cod = $v.cod;
      _message = $v.message;
      _cnt = $v.cnt;
      _list = $v.list.toBuilder();
      _city = $v.city.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherModel;
  }

  @override
  void update(void Function(WeatherModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherModel build() => _build();

  _$WeatherModel _build() {
    _$WeatherModel _$result;
    try {
      _$result = _$v ??
          new _$WeatherModel._(
              cod: BuiltValueNullFieldError.checkNotNull(
                  cod, r'WeatherModel', 'cod'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'WeatherModel', 'message'),
              cnt: BuiltValueNullFieldError.checkNotNull(
                  cnt, r'WeatherModel', 'cnt'),
              list: list.build(),
              city: city.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'list';
        list.build();
        _$failedField = 'city';
        city.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WeatherModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
