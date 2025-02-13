import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:seatsio/src/models/region.dart';
import 'package:seatsio/src/models/seating_chart_config.dart';

part 'serializers.g.dart';

@SerializersFor([
  SeatingChartConfig,
  Region,
])
final Serializers serializers = (_$serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin())
).build();
