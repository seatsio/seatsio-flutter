// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing_for_category.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Pricing> _$pricingSerializer = new _$PricingSerializer();

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
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(CategoryKey)));
    }
    value = object.objects;
    if (value != null) {
      result
        ..add('objects')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
    value = object.ticketTypes;
    if (value != null) {
      result
        ..add('ticketTypes')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TicketType)])));
    }
    value = object.channels;
    if (value != null) {
      result
        ..add('channels')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PricingForChannel)])));
    }
    return result;
  }

  @override
  Pricing deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PricingBuilder();

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
        case 'objects':
          result.objects.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'originalPrice':
          result.originalPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'ticketTypes':
          result.ticketTypes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TicketType)]))!
              as BuiltList<Object?>);
          break;
        case 'channels':
          result.channels.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PricingForChannel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Pricing extends Pricing {
  @override
  final CategoryKey? category;
  @override
  final BuiltList<String>? objects;
  @override
  final double? price;
  @override
  final double? originalPrice;
  @override
  final BuiltList<TicketType>? ticketTypes;
  @override
  final BuiltList<PricingForChannel>? channels;

  factory _$Pricing([void Function(PricingBuilder)? updates]) =>
      (new PricingBuilder()..update(updates))._build();

  _$Pricing._(
      {this.category,
      this.objects,
      this.price,
      this.originalPrice,
      this.ticketTypes,
      this.channels})
      : super._();

  @override
  Pricing rebuild(void Function(PricingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PricingBuilder toBuilder() => new PricingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Pricing &&
        category == other.category &&
        objects == other.objects &&
        price == other.price &&
        originalPrice == other.originalPrice &&
        ticketTypes == other.ticketTypes &&
        channels == other.channels;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, objects.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, originalPrice.hashCode);
    _$hash = $jc(_$hash, ticketTypes.hashCode);
    _$hash = $jc(_$hash, channels.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Pricing')
          ..add('category', category)
          ..add('objects', objects)
          ..add('price', price)
          ..add('originalPrice', originalPrice)
          ..add('ticketTypes', ticketTypes)
          ..add('channels', channels))
        .toString();
  }
}

class PricingBuilder implements Builder<Pricing, PricingBuilder> {
  _$Pricing? _$v;

  CategoryKeyBuilder? _category;
  CategoryKeyBuilder get category =>
      _$this._category ??= new CategoryKeyBuilder();
  set category(CategoryKeyBuilder? category) => _$this._category = category;

  ListBuilder<String>? _objects;
  ListBuilder<String> get objects =>
      _$this._objects ??= new ListBuilder<String>();
  set objects(ListBuilder<String>? objects) => _$this._objects = objects;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  double? _originalPrice;
  double? get originalPrice => _$this._originalPrice;
  set originalPrice(double? originalPrice) =>
      _$this._originalPrice = originalPrice;

  ListBuilder<TicketType>? _ticketTypes;
  ListBuilder<TicketType> get ticketTypes =>
      _$this._ticketTypes ??= new ListBuilder<TicketType>();
  set ticketTypes(ListBuilder<TicketType>? ticketTypes) =>
      _$this._ticketTypes = ticketTypes;

  ListBuilder<PricingForChannel>? _channels;
  ListBuilder<PricingForChannel> get channels =>
      _$this._channels ??= new ListBuilder<PricingForChannel>();
  set channels(ListBuilder<PricingForChannel>? channels) =>
      _$this._channels = channels;

  PricingBuilder();

  PricingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _category = $v.category?.toBuilder();
      _objects = $v.objects?.toBuilder();
      _price = $v.price;
      _originalPrice = $v.originalPrice;
      _ticketTypes = $v.ticketTypes?.toBuilder();
      _channels = $v.channels?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Pricing other) {
    ArgumentError.checkNotNull(other, 'other');
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
          new _$Pricing._(
            category: _category?.build(),
            objects: _objects?.build(),
            price: price,
            originalPrice: originalPrice,
            ticketTypes: _ticketTypes?.build(),
            channels: _channels?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'category';
        _category?.build();
        _$failedField = 'objects';
        _objects?.build();

        _$failedField = 'ticketTypes';
        _ticketTypes?.build();
        _$failedField = 'channels';
        _channels?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Pricing', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
