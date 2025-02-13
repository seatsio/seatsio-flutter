// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing_for_category.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PricingForCategory> _$pricingForCategorySerializer =
    new _$PricingForCategorySerializer();

class _$PricingForCategorySerializer
    implements StructuredSerializer<PricingForCategory> {
  @override
  final Iterable<Type> types = const [PricingForCategory, _$PricingForCategory];
  @override
  final String wireName = 'PricingForCategory';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PricingForCategory object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(CategoryKey)),
    ];
    Object? value;
    value = object.price;
    if (value != null) {
      result
        ..add('price')
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
  PricingForCategory deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PricingForCategoryBuilder();

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

class _$PricingForCategory extends PricingForCategory {
  @override
  final CategoryKey category;
  @override
  final double? price;
  @override
  final BuiltList<TicketType>? ticketTypes;

  factory _$PricingForCategory(
          [void Function(PricingForCategoryBuilder)? updates]) =>
      (new PricingForCategoryBuilder()..update(updates))._build();

  _$PricingForCategory._({required this.category, this.price, this.ticketTypes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        category, r'PricingForCategory', 'category');
  }

  @override
  PricingForCategory rebuild(
          void Function(PricingForCategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PricingForCategoryBuilder toBuilder() =>
      new PricingForCategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PricingForCategory &&
        category == other.category &&
        price == other.price &&
        ticketTypes == other.ticketTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, ticketTypes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PricingForCategory')
          ..add('category', category)
          ..add('price', price)
          ..add('ticketTypes', ticketTypes))
        .toString();
  }
}

class PricingForCategoryBuilder
    implements Builder<PricingForCategory, PricingForCategoryBuilder> {
  _$PricingForCategory? _$v;

  CategoryKeyBuilder? _category;
  CategoryKeyBuilder get category =>
      _$this._category ??= new CategoryKeyBuilder();
  set category(CategoryKeyBuilder? category) => _$this._category = category;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  ListBuilder<TicketType>? _ticketTypes;
  ListBuilder<TicketType> get ticketTypes =>
      _$this._ticketTypes ??= new ListBuilder<TicketType>();
  set ticketTypes(ListBuilder<TicketType>? ticketTypes) =>
      _$this._ticketTypes = ticketTypes;

  PricingForCategoryBuilder();

  PricingForCategoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _category = $v.category.toBuilder();
      _price = $v.price;
      _ticketTypes = $v.ticketTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PricingForCategory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PricingForCategory;
  }

  @override
  void update(void Function(PricingForCategoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PricingForCategory build() => _build();

  _$PricingForCategory _build() {
    _$PricingForCategory _$result;
    try {
      _$result = _$v ??
          new _$PricingForCategory._(
            category: category.build(),
            price: price,
            ticketTypes: _ticketTypes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'category';
        category.build();

        _$failedField = 'ticketTypes';
        _ticketTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PricingForCategory', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
