// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sys_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SysModel> _$sysModelSerializer = new _$SysModelSerializer();

class _$SysModelSerializer implements StructuredSerializer<SysModel> {
  @override
  final Iterable<Type> types = const [SysModel, _$SysModel];
  @override
  final String wireName = 'SysModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, SysModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'pod',
      serializers.serialize(object.pod, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SysModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SysModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'pod':
          result.pod = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SysModel extends SysModel {
  @override
  final String pod;

  factory _$SysModel([void Function(SysModelBuilder)? updates]) =>
      (new SysModelBuilder()..update(updates))._build();

  _$SysModel._({required this.pod}) : super._() {
    BuiltValueNullFieldError.checkNotNull(pod, r'SysModel', 'pod');
  }

  @override
  SysModel rebuild(void Function(SysModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SysModelBuilder toBuilder() => new SysModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SysModel && pod == other.pod;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pod.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SysModel')..add('pod', pod))
        .toString();
  }
}

class SysModelBuilder implements Builder<SysModel, SysModelBuilder> {
  _$SysModel? _$v;

  String? _pod;
  String? get pod => _$this._pod;
  set pod(String? pod) => _$this._pod = pod;

  SysModelBuilder();

  SysModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pod = $v.pod;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SysModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SysModel;
  }

  @override
  void update(void Function(SysModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SysModel build() => _build();

  _$SysModel _build() {
    final _$result = _$v ??
        new _$SysModel._(
            pod:
                BuiltValueNullFieldError.checkNotNull(pod, r'SysModel', 'pod'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
