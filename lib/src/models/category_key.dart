import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_key.g.dart';

class CategoryKeySerializer implements PrimitiveSerializer<CategoryKey> {
  @override
  final Iterable<Type> types = const [CategoryKey];
  @override
  final String wireName = 'CategoryKey';

  @override
  Object serialize(Serializers serializers, CategoryKey object, {FullType specifiedType = FullType.unspecified}) {
    final value = object.value;
    return int.tryParse(value) ?? value; // ✅ Convert "1" to 1, but "VIP" stays "VIP"
  }

  @override
  CategoryKey deserialize(Serializers serializers, Object serialized, {FullType specifiedType = FullType.unspecified}) {
    return CategoryKey.from(serialized);
  }
}

abstract class CategoryKey implements Built<CategoryKey, CategoryKeyBuilder> {
  String get value;

  CategoryKey._();

  factory CategoryKey.fromString(String key) {
    return _$CategoryKey._(value: key);
  }

  factory CategoryKey.fromInt(int key) {
    return _$CategoryKey._(value: key.toString());
  }

  static CategoryKey from(dynamic key) {
    if (key is int) {
      return CategoryKey.fromInt(key);
    } else if (key is String) {
      return CategoryKey.fromString(key);
    } else {
      throw ArgumentError("CategoryKey must be a String or int");
    }
  }

  static Serializer<CategoryKey> get serializer => _$categoryKeySerializer;
}
