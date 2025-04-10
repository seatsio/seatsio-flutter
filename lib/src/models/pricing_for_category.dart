import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:seatsio/src/models/pricing_for_channel.dart';

import '../util/serializers.dart';
import 'category_key.dart';
import 'ticket_type.dart';

part 'pricing_for_category.g.dart';

abstract class PricingForCategory
    implements Built<PricingForCategory, PricingForCategoryBuilder> {
  CategoryKey get category;
  double? get price;
  double? get originalPrice;
  BuiltList<TicketType>? get ticketTypes;

  BuiltList<PricingForChannel>? get channels;

  // TODO add support for pricing per object

  PricingForCategory._();

  factory PricingForCategory({
    required dynamic category,
    double? price,
    double? originalPrice,
    List<TicketType>? ticketTypes,
    List<PricingForChannel>? channels,
  }) {
    return _$PricingForCategory._(
      category: CategoryKey.from(category),
      price: price,
      originalPrice: originalPrice,
      ticketTypes: ticketTypes != null ? BuiltList(ticketTypes) : null,
      channels: channels != null ? BuiltList(channels) : null,
    );
  }

  static Serializer<PricingForCategory> get serializer => _$pricingForCategorySerializer;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(PricingForCategory.serializer, this) as Map<String, dynamic>;
  }

}
