import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ticket_type.g.dart';

abstract class TicketType implements Built<TicketType, TicketTypeBuilder> {
  String get ticketType;
  double get price;
  double? get originalPrice;
  String? get label;
  String? get description;

  TicketType._();

  factory TicketType({
    required String ticketType,
    required double price,
    double? originalPrice,
    String? label,
    String? description,
  }) {
    return _$TicketType._(
      ticketType: ticketType,
      price: price,
      originalPrice: originalPrice,
      label: label,
      description: description,
    );
  }

  static Serializer<TicketType> get serializer => _$ticketTypeSerializer;
}
