import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'region.g.dart';

class Region extends EnumClass {

  static const Region eu = _$eu;
  static const Region na = _$na;
  static const Region sa = _$sa;
  static const Region oc = _$oc;

  const Region._(String name) : super(name);

  String toJson() => name;

  static BuiltSet<Region> get values => _$values;
  static Region valueOf(String name) => _$valueOf(name);

  static Serializer<Region> get serializer => _$regionSerializer;
}
