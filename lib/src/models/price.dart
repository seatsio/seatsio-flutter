import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../util/serializers.dart';
import 'category_key.dart';

part 'price.g.dart';

abstract class Price implements Built<Price, PriceBuilder> {

  // TODO bver add fee, ticketTypes and channels

  CategoryKey? get category;
  double? get price;
  double? get originalPrice;

  Price._();

  factory Price([void Function(PriceBuilder) updates]) = _$Price;

  factory Price.forCategory({
    required dynamic category,
    double? price,
    double? originalPrice,
  }) {
    return Price((b) {
      b
        ..category.replace(CategoryKey.from(category))
        ..price = price
        ..originalPrice = originalPrice;
    });
  }

  Map<String, dynamic> toJson() =>
      serializers.serializeWith(Price.serializer, this)
      as Map<String, dynamic>;

  static Serializer<Price> get serializer => _$priceSerializer;
}
