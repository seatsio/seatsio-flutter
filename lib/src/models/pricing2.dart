import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:seatsio_flutter/src/models/price.dart';

import '../util/serializers.dart';

part 'pricing2.g.dart';

abstract class Pricing2 implements Built<Pricing2, Pricing2Builder> {

  BuiltList<Price>? get prices;
  bool? get allFeesIncluded;
  bool? get showSectionPricingOverlay;

  @BuiltValueField(serialize: false)
  Function(num price)? get priceFormatter;

  Pricing2._();

  factory Pricing2({
    List<Price>? prices,
    bool? allFeesIncluded,
    String Function(num price)? priceFormatter,
    bool? showSectionPricingOverlay
  }) {
    return _$Pricing2._(
      prices: prices != null ? BuiltList<Price>(prices) : null,
      allFeesIncluded: allFeesIncluded,
      priceFormatter: priceFormatter,
      showSectionPricingOverlay: showSectionPricingOverlay
    );
  }

  static Serializer<Pricing2> get serializer =>
      _$pricing2Serializer;

  Map<String, dynamic> toJson() {
    var serialized = serializers.serializeWith(Pricing2.serializer, this) as Map<String, dynamic>;
    if (priceFormatter != null) {
      serialized['hasPriceFormatter'] = true;
    }
    return serialized;
  }
}
