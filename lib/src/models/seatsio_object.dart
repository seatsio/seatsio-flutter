import 'package:seatsio_flutter/seatsio_flutter.dart';

class SeatsioObject {
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
  final bool? selectable;
  final bool? selected;
  final String? entrance;
  final String? status;
  final Map<String, dynamic>? extraData;
  final Map<String, dynamic>? dataPerEvent;
  final String? selectedTicketType;
  final int? seasonStatusOverriddenQuantity;
  final String? displayObjectType;
  final dynamic pricing;
  final dynamic parent;
  final String? viewFromSeatUrl;

  // Area
  final int? capacity;
  final int? numBooked;
  final int? numFree;
  final int? numSelected;
  final Map<String, dynamic>? selectionPerTicketType;

  // Section
  final dynamic sectionCategory;
  final int? numberOfSelectableObjects;
  final int? numberOfSelectedObjects;
  final dynamic selectableCategories;
  final bool? isInteractive;

  SeatsioObject(
      {this.label,
      this.labels,
      this.inSelectableChannel,
      this.objectType,
      this.accessible,
      this.restrictedView,
      this.liftUpArmrests,
      this.companionSeat,
      this.semiAmbulatorySeat,
      this.category,
      this.forSale,
      this.selectable,
      this.selected,
      this.entrance,
      this.status,
      this.extraData,
      this.dataPerEvent,
      this.selectedTicketType,
      this.seasonStatusOverriddenQuantity,
      this.displayObjectType,
      this.pricing,
      this.parent,
      this.viewFromSeatUrl,
      this.capacity,
      this.numBooked,
      this.numFree,
      this.numSelected,
      this.selectionPerTicketType,
      this.sectionCategory,
      this.numberOfSelectableObjects,
      this.numberOfSelectedObjects,
      this.selectableCategories,
      this.isInteractive});

  factory SeatsioObject.fromJson(Map<String, dynamic> json) {
    return SeatsioObject(
        label: json['label'],
        labels: json['labels'] != null ? LabelComponents.fromJson(json['labels']) : null,
        inSelectableChannel: json['inSelectableChannel'],
        objectType: json['objectType'],
        accessible: json['accessible'],
        restrictedView: json['restrictedView'],
        liftUpArmrests: json['liftUpArmrests'],
        companionSeat: json['companionSeat'],
        semiAmbulatorySeat: json['semiAmbulatorySeat'],
        category: json['category'] != null
            ? SeatsioCategory.fromJson(json['category'])
            : null,
        forSale: json['forSale'],
        selectable: json['selectable'],
        selected: json['selected'],
        entrance: json['entrance'],
        status: json['status'],
        extraData: json['extraData'],
        dataPerEvent: json['dataPerEvent'],
        selectedTicketType: json['selectedTicketType'],
        seasonStatusOverriddenQuantity: json['seasonStatusOverriddenQuantity'],
        displayObjectType: json['displayObjectType'],
        pricing: json['pricing'],
        parent: json['parent'],
        viewFromSeatUrl: json['viewFromSeatUrl'],
        capacity: json['capacity'],
        numBooked: json['numBooked'],
        numFree: json['numFree'],
        numSelected: json['numSelected'],
        selectionPerTicketType: json['selectionPerTicketType'],
        sectionCategory: json['sectionCategory'],
        numberOfSelectableObjects: json['numberOfSelectableObjects'],
        numberOfSelectedObjects: json['numberOfSelectedObjects'],
        selectableCategories: json['selectableCategories'],
        isInteractive: json['isInteractive']);
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
