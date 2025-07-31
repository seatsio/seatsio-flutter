import 'package:built_value/built_value.dart';

part 'style.g.dart';

/// Constants for style font values
class SeatsioStyleFont {
  static const String inter = 'Inter';
  static const String roboto = 'Roboto';
  static const String montserrat = 'Montserrat';
  static const String workSans = 'WorkSans';
  static const String notoSansHK = 'NotoSansHK';
  static const String lato = 'Lato';
  static const String nunitoSans = 'NunitoSans';
}

/// Constants for style corner radius values
class SeatsioStyleCornerRadius {
  static const String round = 'round';
  static const String square = 'square';
}

/// Constants for style button shape values
class SeatsioStyleButtonShape {
  static const String round = 'round';
  static const String square = 'square';
}

abstract class SeatsioStyle implements Built<SeatsioStyle, SeatsioStyleBuilder> {
  /// Defines the font for text and labels.
  ///
  /// Use [SeatsioStyleFont] constants for type-safe values:
  /// - [SeatsioStyleFont.inter]
  /// - [SeatsioStyleFont.roboto]
  /// - [SeatsioStyleFont.montserrat]
  /// - [SeatsioStyleFont.workSans]
  /// - [SeatsioStyleFont.notoSansHK]
  /// - [SeatsioStyleFont.lato]
  /// - [SeatsioStyleFont.nunitoSans]
  String? get font;

  /// Defines the style of corners for the object popover, tooltips, floating toolbars and dialogs.
  ///
  /// Use [SeatsioStyleCornerRadius] constants for type-safe values:
  /// - [SeatsioStyleCornerRadius.round] – Default. Use rounded corners.
  /// - [SeatsioStyleCornerRadius.square] – Use square corners.
  String? get cornerRadius;

  /// Defines the shape of buttons found in the object popover.
  ///
  /// Use [SeatsioStyleButtonShape] constants for type-safe values:
  /// - [SeatsioStyleButtonShape.round] – Default. Buttons with a rounded appearance.
  /// - [SeatsioStyleButtonShape.square] – Buttons with a more rectangular, sharp appearance.
  String? get buttonShape;

  const SeatsioStyle._();

  factory SeatsioStyle([void Function(SeatsioStyleBuilder b) updates]) = _$SeatsioStyle;

  static void _initializeBuilder(SeatsioStyleBuilder b) {}

  Map<String, String> toJson() {
    return {
      if (font != null) 'font': font!,
      if (cornerRadius != null) 'cornerRadius': cornerRadius!,
      if (buttonShape != null) 'buttonShape': buttonShape!,
    };
  }
}
