import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:seatsio_flutter/src/models/pricing_for_channel.dart';

import '../util/serializers.dart';
import 'category_key.dart';
import 'ticket_type.dart';

part 'pricing.g.dart';

abstract class Pricing
    implements Built<Pricing, PricingBuilder> {
  CategoryKey? get category;
  BuiltList<String>? get objects;
  double? get price;
  double? get originalPrice;
  BuiltList<TicketType>? get ticketTypes;
  BuiltList<PricingForChannel>? get channels;

  Pricing._();

  factory Pricing({
    dynamic category,
    List<String>? objects,
    double? price,
    double? originalPrice,
    List<TicketType>? ticketTypes,
    List<PricingForChannel>? channels,
  }) {
    return _$Pricing._(
      category: category != null ? CategoryKey.from(category) : null,
      objects: objects != null ? BuiltList(objects) : null,
      price: price,
      originalPrice: originalPrice,
      ticketTypes: ticketTypes != null ? BuiltList(ticketTypes) : null,
      channels: channels != null ? BuiltList(channels) : null,
    );
  }

  static Serializer<Pricing> get serializer =>
      _$pricingSerializer;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Pricing.serializer, this)
        as Map<String, dynamic>;
  }
}
