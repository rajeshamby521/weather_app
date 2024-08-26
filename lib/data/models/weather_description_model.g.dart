// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_description_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherDescriptionModel> _$weatherDescriptionModelSerializer =
    new _$WeatherDescriptionModelSerializer();

class _$WeatherDescriptionModelSerializer
    implements StructuredSerializer<WeatherDescriptionModel> {
  @override
  final Iterable<Type> types = const [
    WeatherDescriptionModel,
    _$WeatherDescriptionModel
  ];
  @override
  final String wireName = 'WeatherDescriptionModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WeatherDescriptionModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'main',
      serializers.serialize(object.main, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'icon',
      serializers.serialize(object.icon, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  WeatherDescriptionModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherDescriptionModelBuilder();

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
        case 'main':
          result.main = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherDescriptionModel extends WeatherDescriptionModel {
  @override
  final int id;
  @override
  final String main;
  @override
  final String description;
  @override
  final String icon;

  factory _$WeatherDescriptionModel(
          [void Function(WeatherDescriptionModelBuilder)? updates]) =>
      (new WeatherDescriptionModelBuilder()..update(updates))._build();

  _$WeatherDescriptionModel._(
      {required this.id,
      required this.main,
      required this.description,
      required this.icon})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'WeatherDescriptionModel', 'id');
    BuiltValueNullFieldError.checkNotNull(
        main, r'WeatherDescriptionModel', 'main');
    BuiltValueNullFieldError.checkNotNull(
        description, r'WeatherDescriptionModel', 'description');
    BuiltValueNullFieldError.checkNotNull(
        icon, r'WeatherDescriptionModel', 'icon');
  }

  @override
  WeatherDescriptionModel rebuild(
          void Function(WeatherDescriptionModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherDescriptionModelBuilder toBuilder() =>
      new WeatherDescriptionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherDescriptionModel &&
        id == other.id &&
        main == other.main &&
        description == other.description &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, main.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherDescriptionModel')
          ..add('id', id)
          ..add('main', main)
          ..add('description', description)
          ..add('icon', icon))
        .toString();
  }
}

class WeatherDescriptionModelBuilder
    implements
        Builder<WeatherDescriptionModel, WeatherDescriptionModelBuilder> {
  _$WeatherDescriptionModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _main;
  String? get main => _$this._main;
  set main(String? main) => _$this._main = main;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  WeatherDescriptionModelBuilder();

  WeatherDescriptionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _main = $v.main;
      _description = $v.description;
      _icon = $v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherDescriptionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherDescriptionModel;
  }

  @override
  void update(void Function(WeatherDescriptionModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherDescriptionModel build() => _build();

  _$WeatherDescriptionModel _build() {
    final _$result = _$v ??
        new _$WeatherDescriptionModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'WeatherDescriptionModel', 'id'),
            main: BuiltValueNullFieldError.checkNotNull(
                main, r'WeatherDescriptionModel', 'main'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'WeatherDescriptionModel', 'description'),
            icon: BuiltValueNullFieldError.checkNotNull(
                icon, r'WeatherDescriptionModel', 'icon'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
