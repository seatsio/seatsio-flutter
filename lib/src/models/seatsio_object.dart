class SeatsioObject {
  final String label;

  SeatsioObject({required this.label});

  factory SeatsioObject.fromJson(Map<String, dynamic> json) {
    return SeatsioObject(
      label: json['label'] as String,
    );
  }
}
