// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_key.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoryKey> _$categoryKeySerializer = new _$CategoryKeySerializer();

class _$CategoryKeySerializer implements StructuredSerializer<CategoryKey> {
  @override
  final Iterable<Type> types = const [CategoryKey, _$CategoryKey];
  @override
  final String wireName = 'CategoryKey';

  @override
  Iterable<Object?> serialize(Serializers serializers, CategoryKey object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CategoryKey deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryKeyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CategoryKey extends CategoryKey {
  @override
  final String value;

  factory _$CategoryKey([void Function(CategoryKeyBuilder)? updates]) =>
      (new CategoryKeyBuilder()..update(updates))._build();

  _$CategoryKey._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'CategoryKey', 'value');
  }

  @override
  CategoryKey rebuild(void Function(CategoryKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryKeyBuilder toBuilder() => new CategoryKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryKey && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryKey')..add('value', value))
        .toString();
  }
}

class CategoryKeyBuilder implements Builder<CategoryKey, CategoryKeyBuilder> {
  _$CategoryKey? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  CategoryKeyBuilder();

  CategoryKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryKey other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoryKey;
  }

  @override
  void update(void Function(CategoryKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryKey build() => _build();

  _$CategoryKey _build() {
    final _$result = _$v ??
        new _$CategoryKey._(
          value: BuiltValueNullFieldError.checkNotNull(
              value, r'CategoryKey', 'value'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
