class SelectedTicketType {
  final double price;
  final String ticketType;

  SelectedTicketType({required this.price, required this.ticketType});

  static SelectedTicketType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return SelectedTicketType(
      price: (json['price'] as num).toDouble(),
      ticketType: json['ticketType'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'price': price,
      'ticketType': ticketType,
    };
  }
}
