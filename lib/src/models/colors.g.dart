// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colors.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeatsioColors extends SeatsioColors {
  @override
  final String? colorSelected;
  @override
  final String? colorTitle;
  @override
  final String? availableObjectColor;
  @override
  final String? selectedObjectColor;
  @override
  final String? errorColor;

  factory _$SeatsioColors([void Function(SeatsioColorsBuilder)? updates]) =>
      (SeatsioColorsBuilder()..update(updates))._build();

  _$SeatsioColors._(
      {this.colorSelected,
      this.colorTitle,
      this.availableObjectColor,
      this.selectedObjectColor,
      this.errorColor})
      : super._();
  @override
  SeatsioColors rebuild(void Function(SeatsioColorsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeatsioColorsBuilder toBuilder() => SeatsioColorsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeatsioColors &&
        colorSelected == other.colorSelected &&
        colorTitle == other.colorTitle &&
        availableObjectColor == other.availableObjectColor &&
        selectedObjectColor == other.selectedObjectColor &&
        errorColor == other.errorColor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, colorSelected.hashCode);
    _$hash = $jc(_$hash, colorTitle.hashCode);
    _$hash = $jc(_$hash, availableObjectColor.hashCode);
    _$hash = $jc(_$hash, selectedObjectColor.hashCode);
    _$hash = $jc(_$hash, errorColor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeatsioColors')
          ..add('colorSelected', colorSelected)
          ..add('colorTitle', colorTitle)
          ..add('availableObjectColor', availableObjectColor)
          ..add('selectedObjectColor', selectedObjectColor)
          ..add('errorColor', errorColor))
        .toString();
  }
}

class SeatsioColorsBuilder
    implements Builder<SeatsioColors, SeatsioColorsBuilder> {
  _$SeatsioColors? _$v;

  String? _colorSelected;
  String? get colorSelected => _$this._colorSelected;
  set colorSelected(String? colorSelected) =>
      _$this._colorSelected = colorSelected;

  String? _colorTitle;
  String? get colorTitle => _$this._colorTitle;
  set colorTitle(String? colorTitle) => _$this._colorTitle = colorTitle;

  String? _availableObjectColor;
  String? get availableObjectColor => _$this._availableObjectColor;
  set availableObjectColor(String? availableObjectColor) =>
      _$this._availableObjectColor = availableObjectColor;

  String? _selectedObjectColor;
  String? get selectedObjectColor => _$this._selectedObjectColor;
  set selectedObjectColor(String? selectedObjectColor) =>
      _$this._selectedObjectColor = selectedObjectColor;

  String? _errorColor;
  String? get errorColor => _$this._errorColor;
  set errorColor(String? errorColor) => _$this._errorColor = errorColor;

  SeatsioColorsBuilder() {
    SeatsioColors._initializeBuilder(this);
  }

  SeatsioColorsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _colorSelected = $v.colorSelected;
      _colorTitle = $v.colorTitle;
      _availableObjectColor = $v.availableObjectColor;
      _selectedObjectColor = $v.selectedObjectColor;
      _errorColor = $v.errorColor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeatsioColors other) {
    _$v = other as _$SeatsioColors;
  }

  @override
  void update(void Function(SeatsioColorsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeatsioColors build() => _build();

  _$SeatsioColors _build() {
    final _$result = _$v ??
        _$SeatsioColors._(
          colorSelected: colorSelected,
          colorTitle: colorTitle,
          availableObjectColor: availableObjectColor,
          selectedObjectColor: selectedObjectColor,
          errorColor: errorColor,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
