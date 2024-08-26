// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clouds_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CloudsModel> _$cloudsModelSerializer = new _$CloudsModelSerializer();

class _$CloudsModelSerializer implements StructuredSerializer<CloudsModel> {
  @override
  final Iterable<Type> types = const [CloudsModel, _$CloudsModel];
  @override
  final String wireName = 'CloudsModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CloudsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'all',
      serializers.serialize(object.all, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  CloudsModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CloudsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'all':
          result.all = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CloudsModel extends CloudsModel {
  @override
  final int all;

  factory _$CloudsModel([void Function(CloudsModelBuilder)? updates]) =>
      (new CloudsModelBuilder()..update(updates))._build();

  _$CloudsModel._({required this.all}) : super._() {
    BuiltValueNullFieldError.checkNotNull(all, r'CloudsModel', 'all');
  }

  @override
  CloudsModel rebuild(void Function(CloudsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CloudsModelBuilder toBuilder() => new CloudsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CloudsModel && all == other.all;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, all.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CloudsModel')..add('all', all))
        .toString();
  }
}

class CloudsModelBuilder implements Builder<CloudsModel, CloudsModelBuilder> {
  _$CloudsModel? _$v;

  int? _all;
  int? get all => _$this._all;
  set all(int? all) => _$this._all = all;

  CloudsModelBuilder();

  CloudsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _all = $v.all;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CloudsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CloudsModel;
  }

  @override
  void update(void Function(CloudsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CloudsModel build() => _build();

  _$CloudsModel _build() {
    final _$result = _$v ??
        new _$CloudsModel._(
            all: BuiltValueNullFieldError.checkNotNull(
                all, r'CloudsModel', 'all'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
