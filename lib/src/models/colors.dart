import 'package:built_value/built_value.dart';

part 'colors.g.dart';

abstract class SeatsioColors implements Built<SeatsioColors, SeatsioColorsBuilder> {
  String? get colorSelected;

  String? get colorTitle;

  String? get availableObjectColor;

  String? get selectedObjectColor;

  String? get errorColor;

  SeatsioColors._();

  factory SeatsioColors([void Function(SeatsioColorsBuilder b) updates]) = _$SeatsioColors;

  static void _initializeBuilder(SeatsioColorsBuilder b) {}

  Map<String, String> toJson() {
    return {
      if (colorSelected != null) 'colorSelected': colorSelected!,
      if (colorTitle != null) 'colorTitle': colorTitle!,
      if (availableObjectColor != null) 'availableObjectColor': availableObjectColor!,
      if (selectedObjectColor != null) 'selectedObjectColor': selectedObjectColor!,
      if (errorColor != null) 'errorColor': errorColor!,
    };
  }
}
