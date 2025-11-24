// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Pricing> _$pricingSerializer = _$PricingSerializer();

class _$PricingSerializer implements StructuredSerializer<Pricing> {
  @override
  final Iterable<Type> types = const [Pricing, _$Pricing];
  @override
  final String wireName = 'Pricing';

  @override
  Iterable<Object?> serialize(Serializers serializers, Pricing object,
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
  Pricing deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PricingBuilder();

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

class _$Pricing extends Pricing {
  @override
  final BuiltList<Price>? prices;
  @override
  final bool? allFeesIncluded;
  @override
  final bool? showSectionPricingOverlay;
  @override
  final Function(num price)? priceFormatter;

  factory _$Pricing([void Function(PricingBuilder)? updates]) =>
      (PricingBuilder()..update(updates))._build();

  _$Pricing._(
      {this.prices,
      this.allFeesIncluded,
      this.showSectionPricingOverlay,
      this.priceFormatter})
      : super._();
  @override
  Pricing rebuild(void Function(PricingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PricingBuilder toBuilder() => PricingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is Pricing &&
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
    return (newBuiltValueToStringHelper(r'Pricing')
          ..add('prices', prices)
          ..add('allFeesIncluded', allFeesIncluded)
          ..add('showSectionPricingOverlay', showSectionPricingOverlay)
          ..add('priceFormatter', priceFormatter))
        .toString();
  }
}

class PricingBuilder implements Builder<Pricing, PricingBuilder> {
  _$Pricing? _$v;

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

  PricingBuilder();

  PricingBuilder get _$this {
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
  void replace(Pricing other) {
    _$v = other as _$Pricing;
  }

  @override
  void update(void Function(PricingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Pricing build() => _build();

  _$Pricing _build() {
    _$Pricing _$result;
    try {
      _$result = _$v ??
          _$Pricing._(
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
            r'Pricing', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
