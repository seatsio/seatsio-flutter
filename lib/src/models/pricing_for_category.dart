import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'ticket_type.dart';

part 'pricing_for_category.g.dart';

abstract class PricingForCategory
    implements Built<PricingForCategory, PricingForCategoryBuilder> {
  String get category;
  double? get price;
  BuiltList<TicketType>? get ticketTypes;

  PricingForCategory._();

  factory PricingForCategory({
    required String category,
    double? price,
    List<TicketType>? ticketTypes,
  }) {
    return _$PricingForCategory._(
      category: category,
      price: price,
      ticketTypes: ticketTypes != null ? BuiltList(ticketTypes) : null,
    );
  }

  static Serializer<PricingForCategory> get serializer => _$pricingForCategorySerializer;
}
