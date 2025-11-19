import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:seatsio_flutter/src/models/ticket_type.dart';

import '../util/serializers.dart';
import 'category_key.dart';

part 'price.g.dart';

abstract class Price implements Built<Price, PriceBuilder> {

  // TODO bver add fee, ticketTypes and channels

  CategoryKey? get category;
  double? get price;
  double? get originalPrice;
  BuiltList<TicketType>? get ticketTypes;

  Price._();

  factory Price([void Function(PriceBuilder) updates]) = _$Price;

  factory Price.forCategory({
    required dynamic category,
    double? price,
    double? originalPrice,
    List<TicketType>? ticketTypes,
  }) {
    return Price((b) {
      b
        ..category.replace(CategoryKey.from(category))
        ..price = price
        ..originalPrice = originalPrice
        ..ticketTypes = ticketTypes != null
          ? ListBuilder<TicketType>(ticketTypes)
          : null;
    });
  }

  Map<String, dynamic> toJson() =>
      serializers.serializeWith(Price.serializer, this)
      as Map<String, dynamic>;

  static Serializer<Price> get serializer => _$priceSerializer;
}
