import '../../seatsio.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'seating_chart_config.g.dart';

abstract class SeatingChartConfig implements Built<SeatingChartConfig, SeatingChartConfigBuilder> {
  // Fundamentals & General Purpose
  String get workspaceKey;

  Region get region;

  String? get event;

  List<String>? get events;

  String? get mode;

  Map<String, dynamic>? get extraConfig;

  // Pricing
  List<Pricing>? get pricing;

  @BuiltValueField(serialize: false)
  Function(num price)? get priceFormatter;

  bool? get showSectionPricingOverlay;

  // Selection
  List<String>? get selectedObjects;

  List<String>? get selectableObjects;

  List<SelectionValidator>? get selectionValidators;

  MaxSelectedObjects? get maxSelectedObjects;

  int? get numberOfPlacesToSelect;

  bool? get multiSelectEnabled;

  bool? get objectsWithoutPricingSelectable;

  // Popovers and Tooltips
  @BuiltValueField(wireName: 'objectPopover')
  ObjectPopover? get objectPopover;

  @BuiltValueField(serialize: false)
  Function(SeatsioObject price)? get popoverInfo;

  bool? get showActiveSectionTooltipOnMobile;

  // Language and Text
  String? get language;

  Map<String, String> get messages;

  // Categories
  CategoryFilter? get categoryFilter;

  List<String>? get availableCategories;

  List<String>? get unavailableCategories;

  List<String>? get filteredCategories;

  // Channels
  List<String>? get channels;

  @BuiltValueField(serialize: false)
  String? get objectColor;

  @BuiltValueField(serialize: false)
  String? get sectionColor;

  @BuiltValueField(serialize: false)
  String? get objectLabel;

  @BuiltValueField(serialize: false)
  String? get objectIcon;

  // Visibility
  ShowSectionContents? get showSectionContents;

  bool? get hideSectionsNotForSale;

  @BuiltValueField(serialize: false)
  String? get isObjectVisible;

  bool? get showSeatLabels;

  // Session
  Session? get session;

  String? get holdToken;

  bool? get holdOnSelectForGAs;

  // UI Customization
  bool? get showMinimap;

  bool? get showLegend;

  LegendConfig? get legendConfig;

  bool? get showZoomOutButtonOnMobile;

  String? get loading;

  // styling
  SeatsioColorScheme? get colorScheme;

  SeatsioColors? get colors;

  // Floors
  String? get activeFloor;

  bool? get lockActiveFloor;

  bool? get showFloorElevator;

  // TODO everything under Prompts API https://docs.seats.io/docs/renderer/prompts-api/onPlacesPrompt

  @BuiltValueField(serialize: false)
  Function()? get onChartRendered;

  @BuiltValueField(serialize: false)
  Function()? get onChartRenderingFailed;

  @BuiltValueField(serialize: false)
  Function()? get onChartRerenderingStarted;

  @BuiltValueField(serialize: false)
  Function(SeatsioObject object)? get onObjectClicked;

  @BuiltValueField(serialize: false)
  Function(SeatsioObject object, SelectedTicketType? ticketType)? get onObjectSelected;

  @BuiltValueField(serialize: false)
  Function(SeatsioObject object, SelectedTicketType? ticketType)? get onObjectDeselected;

  @BuiltValueField(serialize: false)
  Function(SeatsioObject object)? get onObjectStatusChanged;

  @BuiltValueField(serialize: false)
  Function(SeatsioObject object)? get onObjectBooked;

  @BuiltValueField(serialize: false)
  Function(HoldToken object)? get onSessionInitialized;

  @BuiltValueField(serialize: false)
  Function()? get onHoldCallsInProgress;

  @BuiltValueField(serialize: false)
  Function()? get onHoldCallsComplete;

  @BuiltValueField(serialize: false)
  Function(List<SeatsioObject> objects, List<SelectedTicketType>? ticketTypes)? get onHoldSucceeded;

  @BuiltValueField(serialize: false)
  Function(List<SeatsioObject> objects, List<SelectedTicketType>? ticketTypes)? get onHoldFailed;

  @BuiltValueField(serialize: false)
  Function()? get onHoldTokenExpired;

  @BuiltValueField(serialize: false)
  Function(List<SeatsioObject> objects, List<SelectedTicketType>? ticketTypes)? get onReleaseHoldSucceeded;

  @BuiltValueField(serialize: false)
  Function(List<SeatsioObject> objects, List<SelectedTicketType>? ticketTypes)? get onReleaseHoldFailed;

  @BuiltValueField(serialize: false)
  Function()? get onSelectionValid;

  @BuiltValueField(serialize: false)
  Function(List<String> violations)? get onSelectionInvalid;

  @BuiltValueField(serialize: false)
  Function()? get onFullScreenOpened;

  @BuiltValueField(serialize: false)
  Function()? get onFullScreenClosed;

  @BuiltValueField(serialize: false)
  Function(List<SeatsioCategory>)? get onFilteredCategoriesChanged;

  @BuiltValueField(serialize: false)
  Function(Floor? floor)? get onFloorChanged;

  // TODO everything under Renderer Properties https://docs.seats.io/docs/renderer/chart-properties-chartselectedobjects

  // TODO everything under Renderer Methods https://docs.seats.io/docs/renderer/chart-properties-chartrender

  SeatingChartConfig._();

  factory SeatingChartConfig([void Function(SeatingChartConfigBuilder)? updates]) {
    final instance = _$SeatingChartConfig(updates ?? (b) {});

    if (instance.workspaceKey.isEmpty) {
      throw ArgumentError('workspaceKey is required and cannot be empty.');
    }
    if ((instance.event?.isEmpty ?? true) == (instance.events?.isEmpty ?? true)) {
      throw ArgumentError(
        'Either "event" or "events" must be provided, but not both.',
      );
    }

    return instance;
  }

  static void _initializeBuilder(SeatingChartConfigBuilder b) {
    b.region = Region.eu;
    b.messages = {};
  }

  static Serializer<SeatingChartConfig> get serializer => _$seatingChartConfigSerializer;

  Map<String, dynamic> toJson() {
    return {
      // fundamentals & general purpose
      "workspaceKey": workspaceKey,
      if (event != null) "event": event,
      if (events != null) "events": events,
      if (mode != null) "mode": mode,
      if (extraConfig != null) "extraConfig": extraConfig,
      // pricing
      if (pricing != null) "pricing": pricing!.map((p) => p.toJson()).toList(),
      if (showSectionPricingOverlay != null) "showSectionPricingOverlay": showSectionPricingOverlay,
      // selection
      if (selectedObjects != null) "selectedObjects": selectedObjects,
      if (selectableObjects != null) "selectableObjects": selectableObjects,
      if (selectionValidators != null) "selectionValidators": selectionValidators!.map((v) => v.toJson()).toList(),
      if (maxSelectedObjects != null) "maxSelectedObjects": maxSelectedObjects!.toJson(),
      if (numberOfPlacesToSelect != null) "numberOfPlacesToSelect": numberOfPlacesToSelect,
      if (multiSelectEnabled != null) "multiSelectEnabled": multiSelectEnabled,
      if (objectsWithoutPricingSelectable != null) "objectsWithoutPricingSelectable": objectsWithoutPricingSelectable,
      // popovers and tooltips
      if (objectPopover != null) "objectPopover": objectPopover!.toJson(),
      if (showActiveSectionTooltipOnMobile != null)
        "showActiveSectionTooltipOnMobile": showActiveSectionTooltipOnMobile,
      // language and text
      if (language != null) "language": language,
      if (messages.isNotEmpty) "messages": messages,
      // categories
      if (categoryFilter != null) "categoryFilter": categoryFilter!.toJson(),
      if (availableCategories != null) "availableCategories": availableCategories,
      if (unavailableCategories != null) "unavailableCategories": unavailableCategories,
      if (filteredCategories != null) "filteredCategories": filteredCategories,
      // channels
      if (channels != null) "channels": channels,
      // object overrides
      if (objectColor != null) "objectColor": objectColor,
      if (sectionColor != null) "sectionColor": sectionColor,
      if (objectLabel != null) "objectLabel": objectLabel,
      if (objectIcon != null) "objectIcon": objectIcon,
      // visibility
      if (showSectionContents != null) "showSectionContents": showSectionContents!.toJson(),
      if (hideSectionsNotForSale != null) "hideSectionsNotForSale": hideSectionsNotForSale,
      if (isObjectVisible != null) "isObjectVisible": isObjectVisible,
      if (showSeatLabels != null) "showSeatLabels": showSeatLabels,
      // session
      if (session != null) "session": session!.toJson(),
      if (holdToken != null) "holdToken": holdToken,
      if (holdOnSelectForGAs != null) "holdOnSelectForGAs": holdOnSelectForGAs,
      // UI customization
      if (showMinimap != null) "showMinimap": showMinimap,
      if (showLegend != null) "showLegend": showLegend,
      if (legendConfig != null) "legendConfig": legendConfig!.toJson(),
      if (showZoomOutButtonOnMobile != null) "showZoomOutButtonOnMobile": showZoomOutButtonOnMobile,
      if (loading != null) "loading": loading,
      // styling
      if (colorScheme != null) "colorScheme": colorScheme!.toJson(),
      if (colors != null) "colors": colors!.toJson(),
      // floors
      if (activeFloor != null) "activeFloor": activeFloor,
      if (lockActiveFloor != null) "lockActiveFloor": lockActiveFloor,
      if (showFloorElevator != null) "showFloorElevator": showFloorElevator,
    };
  }
}
