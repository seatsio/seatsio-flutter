// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seatsio_region.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SeatsioRegion _$eu = const SeatsioRegion._('eu');
const SeatsioRegion _$na = const SeatsioRegion._('na');
const SeatsioRegion _$sa = const SeatsioRegion._('sa');
const SeatsioRegion _$oc = const SeatsioRegion._('oc');

SeatsioRegion _$valueOf(String name) {
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

final BuiltSet<SeatsioRegion> _$values =
    new BuiltSet<SeatsioRegion>(const <SeatsioRegion>[
  _$eu,
  _$na,
  _$sa,
  _$oc,
]);

Serializer<SeatsioRegion> _$seatsioRegionSerializer =
    new _$SeatsioRegionSerializer();

class _$SeatsioRegionSerializer implements PrimitiveSerializer<SeatsioRegion> {
  @override
  final Iterable<Type> types = const <Type>[SeatsioRegion];
  @override
  final String wireName = 'SeatsioRegion';

  @override
  Object serialize(Serializers serializers, SeatsioRegion object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  SeatsioRegion deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SeatsioRegion.valueOf(serialized as String);
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
