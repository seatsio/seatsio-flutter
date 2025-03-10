import 'package:built_value/built_value.dart';

part 'object_popover.g.dart';

abstract class ObjectPopover implements Built<ObjectPopover, ObjectPopoverBuilder> {
  bool? get showAvailability;

  bool? get showCategory;

  bool? get showLabel;

  bool? get showPricing;

  bool? get showUnavailableNotice;

  bool? get stylizedLabel;

  String? get confirmSelection;

  bool? get confirmTicketTypeSelection;

  ObjectPopover._();

  factory ObjectPopover([void Function(ObjectPopoverBuilder b)? updates]) = _$ObjectPopover;

  static void _initializeBuilder(ObjectPopoverBuilder b) {}

  Map<String, dynamic> toJson() {
    return {
      if (showAvailability != null) 'showAvailability': showAvailability,
      if (showCategory != null) 'showCategory': showCategory,
      if (showLabel != null) 'showLabel': showLabel,
      if (showPricing != null) 'showPricing': showPricing,
      if (showUnavailableNotice != null) 'showUnavailableNotice': showUnavailableNotice,
      if (stylizedLabel != null) 'stylizedLabel': stylizedLabel,
      if (confirmSelection != null) 'confirmSelection': confirmSelection,
      if (confirmTicketTypeSelection != null) 'confirmTicketTypeSelection': confirmTicketTypeSelection,
    };
  }
}
