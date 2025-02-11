import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:seatsio/src/models/hold_token.dart';
import 'package:seatsio/src/models/seatsio_region.dart';

import 'pricing_for_category.dart';
import 'seating_chart.dart';
import 'seatsio_category.dart';
import 'seatsio_object.dart';
import 'seatsio_ticket_type.dart';

part 'seating_chart_config.g.dart';

typedef VoidCallback = void Function();
typedef SeatsioObjectCallback = void Function(SeatsioObject);
typedef SeatingChartCallback = void Function(SeatingChart);
typedef SeatsioCategoryListCallback = void Function(BuiltList<SeatsioCategory>?);
typedef SelectionValidatorTypesCallback = void Function(List<SelectionValidatorType>);
typedef SeatsioObjectsBoolCallback = void Function(List<SeatsioObject>, bool);
typedef SeatsioObjectTicketTypeCallback = void Function(SeatsioObject, SeatsioTicketType?);
typedef SeatsioObjectsTicketTypesCallback = void Function(List<SeatsioObject>, List<SeatsioTicketType>?);
typedef SeatsioHoldTokenCallback = void Function(HoldToken holdToken);

enum SelectionValidatorType {
  consecutiveSeats,
  noOrphanSeats,
}

abstract class SeatingChartConfig implements Built<SeatingChartConfig, SeatingChartConfigBuilder> {
  const SeatingChartConfig._();

  factory SeatingChartConfig([updates(SeatingChartConfigBuilder b)]) = _$SeatingChartConfig;

  String get workspaceKey;
  String get event;
  SeatsioRegion get region;

  String? get language;
  BuiltList<PricingForCategory>? get pricing;

  @BuiltValueField(wireName: 'priceFormatter', serialize: false)
  Function(num price)? get priceFormatter;

  int? get numberOfPlacesToSelect;
  bool? get objectWithoutPricingSelectable;
  bool? get objectWithoutCategorySelectable;

  BuiltList<SelectedObject>? get selectedObjects;

  ObjectTooltip? get objectTooltip;

  String? get themePreset;

  String? get themeColor;

  BuiltMap<String, String>? get messages;

  String? get priceLevelsTooltipMessage;

  int? get maxSelectedObjects;
  List<Map<String, dynamic>>? get maxSelectedObjectList;

  BuiltList<String>? get availableCategories;
  BuiltList<String>? get unavailableCategories;
  BestAvailable? get selectBestAvailable;
  bool? get alwaysShowSectionContents;
  String? get showSectionContents;
  bool? get showLegend;
  LegendForCategory? get legend;
  bool? get showMinimap;
  String? get inputDevice;

  @BuiltValueField(wireName: 'showActiveSectionTooltipOnMobile')
  bool? get showActiveSectionTooltip;

  @BuiltValueField(wireName: 'showViewFromYourSeatOnMobile')
  bool? get showViewFromYourSeat;

  BuiltList<SelectionValidator>? get selectionValidators;

  BuiltList<SeatsioCategory>? get categories;

  BuiltMap<String, String>? get objectCategories;

  String? get mode;

  String? get loading;

  bool get showLoadingAnimation;

  List<TicketListing>? get ticketListings;

  bool? get holdOnSelectForGAs;

  String? get holdToken;

  String? get session;

  String? get objectLabel;

  String? get objectIcon;

  String? get isObjectVisible;

  String? get isObjectSelectable;

  String? get objectColor;

  String? get sectionColor;

  BuiltMap<String, String>? get extraConfig;

  bool? get showFullScreenButton;

  BuiltList<String>? get channels;

  bool get enableChartRenderedCallback;

  bool get enableChartRenderingFailedCallback;

  bool get enableObjectClickedCallback;

  bool get enableObjectSelectedCallback;

  bool get enableObjectDeselectedCallback;

  bool get enableSelectionValidCallback;

  bool get enableSelectionInvalidCallback;

  bool get enableBestAvailableSelectedCallback;

  bool get enableBestAvailableSelectionFailedCallback;

  bool get enableHoldSucceededCallback;

  bool get enableHoldFailedCallback;

  bool get enableHoldTokenExpiredCallback;

  bool get enableSessionInitializedCallback;

  bool get enableReleaseHoldSucceededCallback;

  bool get enableReleaseHoldFailedCallback;

  bool get enableSelectedObjectBookedCallback;

  factory SeatingChartConfig.init() {
    return SeatingChartConfig((b) => b
      ..workspaceKey = ""
      ..event = ""
      ..region = SeatsioRegion.eu
      ..language = 'en'
      ..showLoadingAnimation = true
      ..enableChartRenderedCallback = true
      ..enableChartRenderingFailedCallback = true
      ..enableObjectClickedCallback = true
      ..enableObjectSelectedCallback = true
      ..enableObjectDeselectedCallback = true
      ..enableSelectionValidCallback = false
      ..enableSelectionInvalidCallback = false
      ..enableBestAvailableSelectedCallback = false
      ..enableBestAvailableSelectionFailedCallback = false
      ..enableHoldSucceededCallback = false
      ..enableHoldFailedCallback = false
      ..enableHoldTokenExpiredCallback = true
      ..enableSessionInitializedCallback = true
      ..enableReleaseHoldSucceededCallback = false
      ..enableReleaseHoldFailedCallback = false
      ..enableSelectedObjectBookedCallback = false);
  }

  Map<String, Object?> toMap() {
    final configMap = {
      "workspaceKey": workspaceKey,
      "event": event,
      "region": region,
      "language": language ?? "en",
      "holdToken": holdToken ?? "",
      "session": session ?? "none",
      "mode": mode,
      "showLegend": showLegend ?? true,
      "showFullScreenButton": showFullScreenButton ?? true,
      "showMinimap": showMinimap ?? true,
      "inputDevice": inputDevice ?? 'auto',
      "showActiveSectionTooltipOnMobile": showActiveSectionTooltip ?? true,
      "showViewFromYourSeatOnMobile": showViewFromYourSeat ?? true,
      "showSectionContents": showSectionContents ?? "auto",
      "priceFormatter": priceFormatter,
    };

    if (pricing != null) {
      configMap["pricing"] = pricing?.toList();
    }

    if (loading != null) {
      configMap["loading"] = loading;
    }

    if (!showLoadingAnimation) {
      configMap["loading"] = "<div class='loader'></div>";
    }

    if (objectIcon != null) {
      configMap["objectIcon"] = objectIcon;
      if (extraConfig == null) {
        configMap["extraConfig"] = {};
      }
    }

    if (maxSelectedObjectList != null) {
      configMap["maxSelectedObjects"] = maxSelectedObjectList;
    } else if (maxSelectedObjects != null) {
      configMap["maxSelectedObjects"] = maxSelectedObjects;
    }

    if (extraConfig != null) {
      configMap["extraConfig"] = extraConfig!.toMap().toString();
    }

    if (availableCategories != null && availableCategories!.isNotEmpty) {
      configMap["availableCategories"] = availableCategories!.toList();
    }

    if (unavailableCategories != null && unavailableCategories!.isNotEmpty) {
      configMap["unavailableCategories"] = unavailableCategories?.toList();
    }

    if (Platform.isAndroid) {
      configMap["_client"] = "android";
    }

    if (Platform.isIOS) {
      configMap["_library"] = "ios";
    }

    if (numberOfPlacesToSelect != null) {
      configMap["numberOfPlacesToSelect"] = numberOfPlacesToSelect;
    }

    if (selectedObjects != null) {
      configMap["selectedObjects"] = selectedObjects!.map((obj) {
        if (obj.ticketType != null) {
          final Map<String, dynamic> map = {
            "label": obj.label,
            "ticketType": obj.ticketType.toString(),
          };
          if (obj.amount != null) {
            map["amount"] = obj.amount!;
          }
          return map;
        } else {
          return obj.label;
        }
      }).toList();
    }

    return configMap;
  }

  static Serializer<SeatingChartConfig> get serializer => _$seatingChartConfigSerializer;
}

abstract class SelectedObject implements Built<SelectedObject, SelectedObjectBuilder> {
  SelectedObject._();

  factory SelectedObject([updates(SelectedObjectBuilder b)]) = _$SelectedObject;

  String get label;

  String? get ticketType;

  int? get amount;

  static Serializer<SelectedObject> get serializer => _$selectedObjectSerializer;

  @override
  String toString() {
    return 'SelectedObject(label: $label, ticketType: $ticketType, amount: $amount)';
  }
}

abstract class ObjectTooltip implements Built<ObjectTooltip, ObjectTooltipBuilder> {
  ObjectTooltip._();

  factory ObjectTooltip([updates(ObjectTooltipBuilder b)]) = _$ObjectTooltip;

  bool get showActionHint;

  bool get showAvailability;

  bool get showCategory;

  bool get showLabel;

  bool get showPricing;

  bool get showUnavailableNotice;

  bool get stylizedLabel;

  bool get confirmSelectionOnMobile;

  static Serializer<ObjectTooltip> get serializer => _$objectTooltipSerializer;
}

abstract class LegendForCategory implements Built<LegendForCategory, LegendForCategoryBuilder> {
  LegendForCategory._();

  factory LegendForCategory([updates(LegendForCategoryBuilder b)]) = _$LegendForCategory;

  bool get hideNonSelectableCategories;

  bool get hidePricing;

  static Serializer<LegendForCategory> get serializer => _$legendForCategorySerializer;
}

abstract class BestAvailable implements Built<BestAvailable, BestAvailableBuilder> {
  BestAvailable._();

  factory BestAvailable([updates(BestAvailableBuilder b)]) = _$BestAvailable;

  int get number;

  BuiltList<String> get category;

  TicketTypePricing get ticketTypes;

  bool get clearSelection;

  static Serializer<BestAvailable> get serializer => _$bestAvailableSerializer;
}

abstract class SelectionValidator implements Built<SelectionValidator, SelectionValidatorBuilder> {
  SelectionValidator._();

  factory SelectionValidator([updates(SelectionValidatorBuilder b)]) = _$SelectionValidator;

  /// https://docs.seats.io/docs/renderer/config-selectionvalidators
  /// Possible values: 'noOrphanSeats', 'consecutiveSeats'
  String get type;

  static Serializer<SelectionValidator> get serializer => _$selectionValidatorSerializer;
}

abstract class TicketListing implements Built<TicketListing, TicketListingBuilder> {
  TicketListing._();

  factory TicketListing([updates(TicketListingBuilder b)]) = _$TicketListing;

  String get section;

  int get quantity;

  double get price;

  static Serializer<TicketListing> get serializer => _$ticketListingSerializer;
}
