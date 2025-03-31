import 'package:built_value/built_value.dart';

part 'legend_config.g.dart';

abstract class LegendConfig implements Built<LegendConfig, LegendConfigBuilder> {
  bool? get hideNonSelectableCategories;

  bool? get hideUnavailableLegendItems;

  bool? get hidePricing;

  bool? get hideCategoryName;

  LegendConfig._();

  factory LegendConfig([void Function(LegendConfigBuilder b) updates]) = _$LegendConfig;

  static void _initializeBuilder(LegendConfigBuilder b) {}

  Map<String, dynamic> toJson() {
    return {
      if (hideNonSelectableCategories != null) 'hideNonSelectableCategories': hideNonSelectableCategories,
      if (hideUnavailableLegendItems != null) 'hideUnavailableLegendItems': hideUnavailableLegendItems,
      if (hidePricing != null) 'hidePricing': hidePricing,
      if (hideCategoryName != null) 'hideCategoryName': hideCategoryName,
    };
  }
}
