import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'seatsio_region.g.dart';

class SeatsioRegion extends EnumClass {

  static const SeatsioRegion eu = _$eu;
  static const SeatsioRegion na = _$na;
  static const SeatsioRegion sa = _$sa;
  static const SeatsioRegion oc = _$oc;

  const SeatsioRegion._(String name) : super(name);

  String toJson() => name;

  static BuiltSet<SeatsioRegion> get values => _$values;
  static SeatsioRegion valueOf(String name) => _$valueOf(name);

  static Serializer<SeatsioRegion> get serializer => _$seatsioRegionSerializer;
}
