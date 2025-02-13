import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'category_key.dart';
import 'ticket_type.dart';

part 'pricing_for_category.g.dart';

abstract class PricingForCategory
    implements Built<PricingForCategory, PricingForCategoryBuilder> {
  CategoryKey get category;
  double? get price;
  BuiltList<TicketType>? get ticketTypes;

  PricingForCategory._();

  factory PricingForCategory({
    required dynamic category,
    double? price,
    List<TicketType>? ticketTypes,
  }) {
    return _$PricingForCategory._(
      category: CategoryKey.from(category),
      price: price,
      ticketTypes: ticketTypes != null ? BuiltList(ticketTypes) : null,
    );
  }

  static Serializer<PricingForCategory> get serializer => _$pricingForCategorySerializer;
}
