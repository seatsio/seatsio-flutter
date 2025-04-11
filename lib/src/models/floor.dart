import 'package:seatsio_flutter/seatsio.dart';

class Floor {
  final String name;
  final List<SeatsioCategory>? categories;

  Floor({
    required this.name,
    this.categories
  });

  static Floor? fromJson(Map<String, dynamic>? json) {
    if(json == null) {
      return null;
    }

    return Floor(
      name: json['name'],
      categories: json['categories'] != null
          ? (json['categories'] as List)
              .map((category) => SeatsioCategory.fromJson(category))
              .toList()
          : null,
    );
  }
}
