// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing2.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Pricing2> _$pricing2Serializer = _$Pricing2Serializer();

class _$Pricing2Serializer implements StructuredSerializer<Pricing2> {
  @override
  final Iterable<Type> types = const [Pricing2, _$Pricing2];
  @override
  final String wireName = 'Pricing2';

  @override
  Iterable<Object?> serialize(Serializers serializers, Pricing2 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.prices;
    if (value != null) {
      result
        ..add('prices')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Price)])));
    }
    value = object.allFeesIncluded;
    if (value != null) {
      result
        ..add('allFeesIncluded')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.showSectionPricingOverlay;
    if (value != null) {
      result
        ..add('showSectionPricingOverlay')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Pricing2 deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = Pricing2Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'prices':
          result.prices.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Price)]))!
              as BuiltList<Object?>);
          break;
        case 'allFeesIncluded':
          result.allFeesIncluded = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'showSectionPricingOverlay':
          result.showSectionPricingOverlay = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$Pricing2 extends Pricing2 {
  @override
  final BuiltList<Price>? prices;
  @override
  final bool? allFeesIncluded;
  @override
  final bool? showSectionPricingOverlay;
  @override
  final Function(num price)? priceFormatter;

  factory _$Pricing2([void Function(Pricing2Builder)? updates]) =>
      (Pricing2Builder()..update(updates))._build();

  _$Pricing2._(
      {this.prices,
      this.allFeesIncluded,
      this.showSectionPricingOverlay,
      this.priceFormatter})
      : super._();
  @override
  Pricing2 rebuild(void Function(Pricing2Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Pricing2Builder toBuilder() => Pricing2Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is Pricing2 &&
        prices == other.prices &&
        allFeesIncluded == other.allFeesIncluded &&
        showSectionPricingOverlay == other.showSectionPricingOverlay &&
        priceFormatter == _$dynamicOther.priceFormatter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, prices.hashCode);
    _$hash = $jc(_$hash, allFeesIncluded.hashCode);
    _$hash = $jc(_$hash, showSectionPricingOverlay.hashCode);
    _$hash = $jc(_$hash, priceFormatter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Pricing2')
          ..add('prices', prices)
          ..add('allFeesIncluded', allFeesIncluded)
          ..add('showSectionPricingOverlay', showSectionPricingOverlay)
          ..add('priceFormatter', priceFormatter))
        .toString();
  }
}

class Pricing2Builder implements Builder<Pricing2, Pricing2Builder> {
  _$Pricing2? _$v;

  ListBuilder<Price>? _prices;
  ListBuilder<Price> get prices => _$this._prices ??= ListBuilder<Price>();
  set prices(ListBuilder<Price>? prices) => _$this._prices = prices;

  bool? _allFeesIncluded;
  bool? get allFeesIncluded => _$this._allFeesIncluded;
  set allFeesIncluded(bool? allFeesIncluded) =>
      _$this._allFeesIncluded = allFeesIncluded;

  bool? _showSectionPricingOverlay;
  bool? get showSectionPricingOverlay => _$this._showSectionPricingOverlay;
  set showSectionPricingOverlay(bool? showSectionPricingOverlay) =>
      _$this._showSectionPricingOverlay = showSectionPricingOverlay;

  Function(num price)? _priceFormatter;
  Function(num price)? get priceFormatter => _$this._priceFormatter;
  set priceFormatter(Function(num price)? priceFormatter) =>
      _$this._priceFormatter = priceFormatter;

  Pricing2Builder();

  Pricing2Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prices = $v.prices?.toBuilder();
      _allFeesIncluded = $v.allFeesIncluded;
      _showSectionPricingOverlay = $v.showSectionPricingOverlay;
      _priceFormatter = $v.priceFormatter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Pricing2 other) {
    _$v = other as _$Pricing2;
  }

  @override
  void update(void Function(Pricing2Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Pricing2 build() => _build();

  _$Pricing2 _build() {
    _$Pricing2 _$result;
    try {
      _$result = _$v ??
          _$Pricing2._(
            prices: _prices?.build(),
            allFeesIncluded: allFeesIncluded,
            showSectionPricingOverlay: showSectionPricingOverlay,
            priceFormatter: priceFormatter,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prices';
        _prices?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Pricing2', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
