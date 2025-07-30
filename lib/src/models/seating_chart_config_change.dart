import 'package:built_value/built_value.dart';

import '../../seatsio_flutter.dart';

part 'seating_chart_config_change.g.dart';

abstract class SeatingChartConfigChange implements Built<SeatingChartConfigChange, SeatingChartConfigChangeBuilder> {

  @BuiltValueField(serialize: false)
  String? get objectColor;

  @BuiltValueField(serialize: false)
  String? get objectLabel;

  int? get numberOfPlacesToSelect;

  MaxSelectedObjects? get maxSelectedObjects;

  List<String>? get availableCategories;

  List<String>? get unavailableCategories;

  List<String>? get filteredCategories;

  List<Pricing>? get pricing;

  List<String>? get channels;

  Map<String, dynamic>? get extraConfig;

  SeatsioColorScheme? get colorScheme;

  SeatingChartConfigChange._();

  factory SeatingChartConfigChange([void Function(SeatingChartConfigChangeBuilder)? updates]) {
    return _$SeatingChartConfigChange(updates);
  }

  Map<String, dynamic> toJson() {
    return {
      if (objectColor != null) "objectColor": objectColor,
      if (objectLabel != null) "objectLabel": objectLabel,
      if (numberOfPlacesToSelect != null) "numberOfPlacesToSelect": numberOfPlacesToSelect,
      if (maxSelectedObjects != null) "maxSelectedObjects": maxSelectedObjects!.toJson(),
      if (availableCategories != null) "availableCategories": availableCategories,
      if (unavailableCategories != null) "unavailableCategories": unavailableCategories,
      if (filteredCategories != null) "filteredCategories": filteredCategories,
      if (pricing != null) "pricing": pricing!.map((p) => p.toJson()).toList(),
      if (channels != null) "channels": channels,
      if (extraConfig != null) "extraConfig": extraConfig,
      if (colorScheme != null) "colorScheme": colorScheme!.toJson(),
    };
  }

}
