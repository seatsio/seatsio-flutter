import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import '../../seatsio.dart';

part 'serializers.g.dart';

@SerializersFor([
  SeatingChartConfig,
  Region,
  PricingForCategory,
  TicketType
])
final Serializers serializers = (_$serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin())
).build();
