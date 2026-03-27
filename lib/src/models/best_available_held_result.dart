import 'package:seatsio_flutter/seatsio_flutter.dart';

class BestAvailableHeldResult {
  final List<SeatsioObject> objects;
  final bool? nextToEachOther;

  BestAvailableHeldResult({required this.objects, this.nextToEachOther});

  factory BestAvailableHeldResult.fromJson(Map<String, dynamic> json) {
    return BestAvailableHeldResult(
      objects: (json['objects'] as List).map((obj) => SeatsioObject.fromJson(obj)).toList(),
      nextToEachOther: json['nextToEachOther'],
    );
  }
}
