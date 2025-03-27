import 'package:seatsio/seatsio.dart';

class SeatsioSelectedObject {
  final String? label;
  final LabelComponents? labels;
  final bool? inSelectableChannel;
  final String? objectType;
  final bool? accessible;
  final bool? restrictedView;
  final bool? liftUpArmrests;
  final bool? companionSeat;
  final bool? semiAmbulatorySeat;
  final SeatsioCategory? category;
  final bool? forSale;

  SeatsioSelectedObject({
    this.label,
    this.labels,
    this.inSelectableChannel,
    this.objectType,
    this.accessible,
    this.restrictedView,
    this.liftUpArmrests,
    this.companionSeat,
    this.semiAmbulatorySeat,
    this.category,
    this.forSale
  });

  factory SeatsioSelectedObject.fromJson(Map<String, dynamic> json) {
    return SeatsioSelectedObject(
      label: json['label'] as String?,
      labels: json['labels'] != null ? LabelComponents.fromJson(json['labels']) : null,
      inSelectableChannel: json['inSelectableChannel'] as bool?,
      objectType: json['objectType'] as String?,
      accessible: json['accessible'] as bool?,
      restrictedView: json['restrictedView'] as bool?,
      liftUpArmrests: json['liftUpArmrests'] as bool?,
      companionSeat: json['companionSeat'] as bool?,
      semiAmbulatorySeat: json['semiAmbulatorySeat'] as bool?,
      category: json['category'] != null ? SeatsioCategory.fromJson(json['category'] as Map<String, dynamic>) : null,
      forSale: json['forSale'] as bool?,
    );
  }
}

class LabelComponents {
  final String? own;
  final String? parent;
  final String? section;
  final String? displayedLabel;

  LabelComponents({this.own, this.parent, this.section, this.displayedLabel});

  factory LabelComponents.fromJson(Map<String, dynamic> json) {
    return LabelComponents(
      own: json['own'] as String?,
      parent: json['parent'] as String?,
      section: json['section'] as String?,
      displayedLabel: json['displayedLabel'] as String?,
    );
  }
}
