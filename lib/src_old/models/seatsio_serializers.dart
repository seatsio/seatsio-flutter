import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import '../../seatsio_old.dart';

part 'seatsio_serializers.g.dart';

@SerializersFor([
  SeatingChartConfig,
  SelectedObject,
  PricingForCategory,
  SeatsioCategory,
  TicketTypePricing,
  SeatsioObject,
  SeatsioLabel,
  SeatsioPoint,
  SeatsioRegion
])
final Serializers serializers = _$serializers;
