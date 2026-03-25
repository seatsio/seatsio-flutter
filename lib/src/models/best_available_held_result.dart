class BestAvailableHeldResult {
  final List<String> objects;
  final bool? nextToEachOther;

  BestAvailableHeldResult({required this.objects, this.nextToEachOther});

  factory BestAvailableHeldResult.fromJson(Map<String, dynamic> json) {
    return BestAvailableHeldResult(
      objects: List<String>.from(json['objects']),
      nextToEachOther: json['nextToEachOther'],
    );
  }
}
