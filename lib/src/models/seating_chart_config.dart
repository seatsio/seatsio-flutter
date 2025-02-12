import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:seatsio/src/models/seatsio_region.dart';

part 'seating_chart_config.g.dart';

abstract class SeatingChartConfig
    implements Built<SeatingChartConfig, SeatingChartConfigBuilder> {
  SeatingChartConfig._();

  factory SeatingChartConfig([void Function(SeatingChartConfigBuilder) updates]) = _$SeatingChartConfig;

  static void _initializeBuilder(SeatingChartConfigBuilder b) {
    b.region = SeatsioRegion.eu;
  }

  String get workspaceKey;
  String get event;
  SeatsioRegion get region;

  static Serializer<SeatingChartConfig> get serializer => _$seatingChartConfigSerializer;

  toMap() {
    return {
      'workspaceKey': workspaceKey,
      'event': event,
      'region': region.name,
    };
  }
}
