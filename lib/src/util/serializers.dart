import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import '../../seatsio.dart';
import '../models/category_key.dart';

part 'serializers.g.dart';

@SerializersFor([
  SeatingChartConfig,
  Region,
  PricingForCategory,
  TicketType,
  CategoryKey,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..add(CategoryKeySerializer())
      ..addPlugin(StandardJsonPlugin()))
    .build();
