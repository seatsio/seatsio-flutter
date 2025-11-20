import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:seatsio_flutter/src/models/price.dart';

import '../util/serializers.dart';

part 'pricing.g.dart';

abstract class Pricing implements Built<Pricing, PricingBuilder> {

  BuiltList<Price>? get prices;
  bool? get allFeesIncluded;
  bool? get showSectionPricingOverlay;

  @BuiltValueField(serialize: false)
  Function(num price)? get priceFormatter;

  Pricing._();

  factory Pricing({
    List<Price>? prices,
    bool? allFeesIncluded,
    String Function(num price)? priceFormatter,
    bool? showSectionPricingOverlay
  }) {
    return _$Pricing._(
      prices: prices != null ? BuiltList<Price>(prices) : null,
      allFeesIncluded: allFeesIncluded,
      priceFormatter: priceFormatter,
      showSectionPricingOverlay: showSectionPricingOverlay
    );
  }

  static Serializer<Pricing> get serializer =>
      _$pricingSerializer;

  Map<String, dynamic> toJson() {
    var serialized = serializers.serializeWith(Pricing.serializer, this) as Map<String, dynamic>;
    if (priceFormatter != null) {
      serialized['hasPriceFormatter'] = true;
    }
    return serialized;
  }
}
