// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Price> _$priceSerializer = _$PriceSerializer();

class _$PriceSerializer implements StructuredSerializer<Price> {
  @override
  final Iterable<Type> types = const [Price, _$Price];
  @override
  final String wireName = 'Price';

  @override
  Iterable<Object?> serialize(Serializers serializers, Price object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(CategoryKey)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.originalPrice;
    if (value != null) {
      result
        ..add('originalPrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.fee;
    if (value != null) {
      result
        ..add('fee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ticketTypes;
    if (value != null) {
      result
        ..add('ticketTypes')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TicketType)])));
    }
    return result;
  }

  @override
  Price deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PriceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'category':
          result.category.replace(serializers.deserialize(value,
              specifiedType: const FullType(CategoryKey))! as CategoryKey);
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'originalPrice':
          result.originalPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'fee':
          result.fee = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'ticketTypes':
          result.ticketTypes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TicketType)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Price extends Price {
  @override
  final CategoryKey? category;
  @override
  final double? price;
  @override
  final double? originalPrice;
  @override
  final double? fee;
  @override
  final BuiltList<TicketType>? ticketTypes;

  factory _$Price([void Function(PriceBuilder)? updates]) =>
      (PriceBuilder()..update(updates))._build();

  _$Price._(
      {this.category,
      this.price,
      this.originalPrice,
      this.fee,
      this.ticketTypes})
      : super._();
  @override
  Price rebuild(void Function(PriceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PriceBuilder toBuilder() => PriceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Price &&
        category == other.category &&
        price == other.price &&
        originalPrice == other.originalPrice &&
        fee == other.fee &&
        ticketTypes == other.ticketTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, originalPrice.hashCode);
    _$hash = $jc(_$hash, fee.hashCode);
    _$hash = $jc(_$hash, ticketTypes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Price')
          ..add('category', category)
          ..add('price', price)
          ..add('originalPrice', originalPrice)
          ..add('fee', fee)
          ..add('ticketTypes', ticketTypes))
        .toString();
  }
}

class PriceBuilder implements Builder<Price, PriceBuilder> {
  _$Price? _$v;

  CategoryKeyBuilder? _category;
  CategoryKeyBuilder get category => _$this._category ??= CategoryKeyBuilder();
  set category(CategoryKeyBuilder? category) => _$this._category = category;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  double? _originalPrice;
  double? get originalPrice => _$this._originalPrice;
  set originalPrice(double? originalPrice) =>
      _$this._originalPrice = originalPrice;

  double? _fee;
  double? get fee => _$this._fee;
  set fee(double? fee) => _$this._fee = fee;

  ListBuilder<TicketType>? _ticketTypes;
  ListBuilder<TicketType> get ticketTypes =>
      _$this._ticketTypes ??= ListBuilder<TicketType>();
  set ticketTypes(ListBuilder<TicketType>? ticketTypes) =>
      _$this._ticketTypes = ticketTypes;

  PriceBuilder();

  PriceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _category = $v.category?.toBuilder();
      _price = $v.price;
      _originalPrice = $v.originalPrice;
      _fee = $v.fee;
      _ticketTypes = $v.ticketTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Price other) {
    _$v = other as _$Price;
  }

  @override
  void update(void Function(PriceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Price build() => _build();

  _$Price _build() {
    _$Price _$result;
    try {
      _$result = _$v ??
          _$Price._(
            category: _category?.build(),
            price: price,
            originalPrice: originalPrice,
            fee: fee,
            ticketTypes: _ticketTypes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'category';
        _category?.build();

        _$failedField = 'ticketTypes';
        _ticketTypes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Price', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
