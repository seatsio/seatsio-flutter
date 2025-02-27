import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../../seatsio.dart';

part 'seating_chart_config.g.dart';

abstract class SeatingChartConfig implements Built<SeatingChartConfig, SeatingChartConfigBuilder> {

  // Fundamentals & General Purpose
  String get workspaceKey;
  Region get region;
  String? get event;
  List<String>? get events;
  String? get mode;
  // TODO extraConfig

  // Pricing
  BuiltList<PricingForCategory>? get pricing;

  @BuiltValueField(serialize: false)
  Function(num price)? get priceFormatter;

  // TODO showsectionpricingoverlay
  // TODO everything under SELECTION https://docs.seats.io/docs/renderer/config-selectedobjects
  // TODO everything under popovers and tooltips https://docs.seats.io/docs/renderer/config-objectPopover

  String? get language;

  // TODO messages https://docs.seats.io/docs/renderer/config-messages

  // TODO everything under Categories https://docs.seats.io/docs/renderer/categoryfilter

  // TODO channels https://docs.seats.io/docs/renderer/config-channels

  // TODO everything under Object overrides https://docs.seats.io/docs/renderer/config-objectcolor

  @BuiltValueField(serialize: false)
  String? get objectColor;

  // TODO everything under Visibility https://docs.seats.io/docs/renderer/config-showsectioncontents

  // TODO everything under Session https://docs.seats.io/docs/renderer/config-session

  // TODO everything under UI Customization https://docs.seats.io/docs/renderer/config-showminimap

  // TODO everything under Styling https://docs.seats.io/docs/renderer/colorscheme

  // TODO everything under Floors https://docs.seats.io/docs/renderer/activeFloor

  // TODO everything under Prompts API https://docs.seats.io/docs/renderer/prompts-api/onPlacesPrompt

  // TODO everything under Advanced https://docs.seats.io/docs/renderer/config-fitto

  // TODO everything under React To Events https://docs.seats.io/docs/renderer/events-onchartrendered

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
  }

  static Serializer<SeatingChartConfig> get serializer => _$seatingChartConfigSerializer;

  Map<String, dynamic> toJson() {
    return {
      "workspaceKey": workspaceKey,
      if (event != null) "event": event,
      if (events != null) "events": events,
      if (mode != null) "mode": mode,
      if (language != null) "language": language,
      if (objectColor != null) "objectColor": objectColor,
    };
  }
}
