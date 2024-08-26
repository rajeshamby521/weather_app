// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rain_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RainModel> _$rainModelSerializer = new _$RainModelSerializer();

class _$RainModelSerializer implements StructuredSerializer<RainModel> {
  @override
  final Iterable<Type> types = const [RainModel, _$RainModel];
  @override
  final String wireName = 'RainModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, RainModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.h3;
    if (value != null) {
      result
        ..add('h3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  RainModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RainModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'h3':
          result.h3 = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$RainModel extends RainModel {
  @override
  final double? h3;

  factory _$RainModel([void Function(RainModelBuilder)? updates]) =>
      (new RainModelBuilder()..update(updates))._build();

  _$RainModel._({this.h3}) : super._();

  @override
  RainModel rebuild(void Function(RainModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RainModelBuilder toBuilder() => new RainModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RainModel && h3 == other.h3;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, h3.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RainModel')..add('h3', h3))
        .toString();
  }
}

class RainModelBuilder implements Builder<RainModel, RainModelBuilder> {
  _$RainModel? _$v;

  double? _h3;
  double? get h3 => _$this._h3;
  set h3(double? h3) => _$this._h3 = h3;

  RainModelBuilder();

  RainModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _h3 = $v.h3;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RainModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RainModel;
  }

  @override
  void update(void Function(RainModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RainModel build() => _build();

  _$RainModel _build() {
    final _$result = _$v ?? new _$RainModel._(h3: h3);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
