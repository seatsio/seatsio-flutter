import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../util/serializers.dart';
import 'ticket_type.dart';

part 'pricing_for_channel.g.dart';

abstract class PricingForChannel
    implements Built<PricingForChannel, PricingForChannelBuilder> {
  String get channel;
  double? get price;
  double? get originalPrice;
  BuiltList<TicketType>? get ticketTypes;

  PricingForChannel._();

  factory PricingForChannel({
    required String channel,
    double? price,
    double? originalPrice,
    List<TicketType>? ticketTypes,
  }) {
    return _$PricingForChannel._(
      channel: channel,
      price: price,
      originalPrice: originalPrice,
      ticketTypes: ticketTypes != null ? BuiltList(ticketTypes) : null,
    );
  }

  static Serializer<PricingForChannel> get serializer => _$pricingForChannelSerializer;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(PricingForChannel.serializer, this) as Map<String, dynamic>;
  }

}
