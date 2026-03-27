class BestAvailableForHolding {
  final int? number;
  final List<String>? categories;
  final String? zone;
  final List<String>? sections;
  final int? accessibleSeats;
  final Map<String, int>? ticketTypes;

  BestAvailableForHolding({
    this.number,
    this.categories,
    this.zone,
    this.sections,
    this.accessibleSeats,
    this.ticketTypes,
  });

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (number != null) map['number'] = number;
    if (categories != null) map['categories'] = categories;
    if (zone != null) map['zone'] = zone;
    if (sections != null) map['sections'] = sections;
    if (accessibleSeats != null) map['accessibleSeats'] = accessibleSeats;
    if (ticketTypes != null) map['ticketTypes'] = ticketTypes;
    return map;
  }
}
