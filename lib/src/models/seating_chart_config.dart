import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../../seatsio.dart';

part 'seating_chart_config.g.dart';

abstract class SeatingChartConfig implements Built<SeatingChartConfig, SeatingChartConfigBuilder> {
  String get workspaceKey;

  String? get event;

  BuiltList<String>? get events;

  Region get region;

  // TODO mode
  // TODO extraConfig

  BuiltList<PricingForCategory>? get pricing;

  @BuiltValueField(serialize: false)
  Function(num price)? get priceFormatter;

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
}
