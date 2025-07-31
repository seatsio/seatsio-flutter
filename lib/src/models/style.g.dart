// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'style.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeatsioStyle extends SeatsioStyle {
  @override
  final String? font;
  @override
  final String? cornerRadius;
  @override
  final String? buttonShape;

  factory _$SeatsioStyle([void Function(SeatsioStyleBuilder)? updates]) =>
      (SeatsioStyleBuilder()..update(updates))._build();

  _$SeatsioStyle._({this.font, this.cornerRadius, this.buttonShape})
      : super._();
  @override
  SeatsioStyle rebuild(void Function(SeatsioStyleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeatsioStyleBuilder toBuilder() => SeatsioStyleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeatsioStyle &&
        font == other.font &&
        cornerRadius == other.cornerRadius &&
        buttonShape == other.buttonShape;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, font.hashCode);
    _$hash = $jc(_$hash, cornerRadius.hashCode);
    _$hash = $jc(_$hash, buttonShape.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeatsioStyle')
          ..add('font', font)
          ..add('cornerRadius', cornerRadius)
          ..add('buttonShape', buttonShape))
        .toString();
  }
}

class SeatsioStyleBuilder
    implements Builder<SeatsioStyle, SeatsioStyleBuilder> {
  _$SeatsioStyle? _$v;

  String? _font;
  String? get font => _$this._font;
  set font(String? font) => _$this._font = font;

  String? _cornerRadius;
  String? get cornerRadius => _$this._cornerRadius;
  set cornerRadius(String? cornerRadius) => _$this._cornerRadius = cornerRadius;

  String? _buttonShape;
  String? get buttonShape => _$this._buttonShape;
  set buttonShape(String? buttonShape) => _$this._buttonShape = buttonShape;

  SeatsioStyleBuilder() {
    SeatsioStyle._initializeBuilder(this);
  }

  SeatsioStyleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _font = $v.font;
      _cornerRadius = $v.cornerRadius;
      _buttonShape = $v.buttonShape;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeatsioStyle other) {
    _$v = other as _$SeatsioStyle;
  }

  @override
  void update(void Function(SeatsioStyleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeatsioStyle build() => _build();

  _$SeatsioStyle _build() {
    final _$result = _$v ??
        _$SeatsioStyle._(
          font: font,
          cornerRadius: cornerRadius,
          buttonShape: buttonShape,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
