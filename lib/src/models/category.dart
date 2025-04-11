class Category {
  final bool? accessible;
  final String? color;
  final int? key;
  final String? label;
  final PricingInfo? pricing;
  final bool? hasSelectableObjects;

  Category({
    this.accessible,
    this.color,
    this.key,
    this.label,
    this.pricing,
    this.hasSelectableObjects,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      accessible: json['accessible'] as bool?,
      color: json['color'] as String?,
      key: json['key'] as int?,
      label: json['label'] as String?,
      pricing: json['pricing'] != null ? PricingInfo.fromJson(json['pricing']) : null,
      hasSelectableObjects: json['hasSelectableObjects'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (accessible != null) 'accessible': accessible,
      if (color != null) 'color': color,
      if (key != null) 'key': key,
      if (label != null) 'label': label,
      if (pricing != null) 'pricing': pricing!.toJson(),
      if (hasSelectableObjects != null) 'hasSelectableObjects': hasSelectableObjects,
    };
  }
}

class PricingInfo {
  final double? price;
  final String? formattedPrice;

  PricingInfo({this.price, this.formattedPrice});

  factory PricingInfo.fromJson(Map<String, dynamic> json) {
    return PricingInfo(
      price: (json['price'] as num?)?.toDouble(),
      formattedPrice: json['formattedPrice'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (price != null) 'price': price,
      if (formattedPrice != null) 'formattedPrice': formattedPrice,
    };
  }
}
