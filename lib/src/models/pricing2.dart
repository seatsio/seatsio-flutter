import 'package:built_value/built_value.dart';

part 'pricing2.g.dart';

abstract class Pricing2 implements Built<Pricing2, Pricing2Builder> {

  bool? get allFeesIncluded;

  Pricing2._();

  factory Pricing2({
    bool? allFeesIncluded
  }) {
    return _$Pricing2._(
      allFeesIncluded: allFeesIncluded,
    );
  }

  toJson() {
    // will include something like if (pricing != null) "pricing": pricing!.map((p) => p.toJson()).toList(),
  }
}
