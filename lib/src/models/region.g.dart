// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Region _$eu = const Region._('eu');
const Region _$na = const Region._('na');
const Region _$sa = const Region._('sa');
const Region _$oc = const Region._('oc');

Region _$valueOf(String name) {
  switch (name) {
    case 'eu':
      return _$eu;
    case 'na':
      return _$na;
    case 'sa':
      return _$sa;
    case 'oc':
      return _$oc;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Region> _$values = new BuiltSet<Region>(const <Region>[
  _$eu,
  _$na,
  _$sa,
  _$oc,
]);

Serializer<Region> _$regionSerializer = new _$RegionSerializer();

class _$RegionSerializer implements PrimitiveSerializer<Region> {
  @override
  final Iterable<Type> types = const <Type>[Region];
  @override
  final String wireName = 'Region';

  @override
  Object serialize(Serializers serializers, Region object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  Region deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Region.valueOf(serialized as String);
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
