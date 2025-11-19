// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TicketType> _$ticketTypeSerializer = _$TicketTypeSerializer();

class _$TicketTypeSerializer implements StructuredSerializer<TicketType> {
  @override
  final Iterable<Type> types = const [TicketType, _$TicketType];
  @override
  final String wireName = 'TicketType';

  @override
  Iterable<Object?> serialize(Serializers serializers, TicketType object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'ticketType',
      serializers.serialize(object.ticketType,
          specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
    ];
    Object? value;
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
    value = object.label;
    if (value != null) {
      result
        ..add('label')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TicketType deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = TicketTypeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ticketType':
          result.ticketType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'originalPrice':
          result.originalPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'fee':
          result.fee = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$TicketType extends TicketType {
  @override
  final String ticketType;
  @override
  final double price;
  @override
  final double? originalPrice;
  @override
  final double? fee;
  @override
  final String? label;
  @override
  final String? description;

  factory _$TicketType([void Function(TicketTypeBuilder)? updates]) =>
      (TicketTypeBuilder()..update(updates))._build();

  _$TicketType._(
      {required this.ticketType,
      required this.price,
      this.originalPrice,
      this.fee,
      this.label,
      this.description})
      : super._();
  @override
  TicketType rebuild(void Function(TicketTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TicketTypeBuilder toBuilder() => TicketTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TicketType &&
        ticketType == other.ticketType &&
        price == other.price &&
        originalPrice == other.originalPrice &&
        fee == other.fee &&
        label == other.label &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ticketType.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, originalPrice.hashCode);
    _$hash = $jc(_$hash, fee.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TicketType')
          ..add('ticketType', ticketType)
          ..add('price', price)
          ..add('originalPrice', originalPrice)
          ..add('fee', fee)
          ..add('label', label)
          ..add('description', description))
        .toString();
  }
}

class TicketTypeBuilder implements Builder<TicketType, TicketTypeBuilder> {
  _$TicketType? _$v;

  String? _ticketType;
  String? get ticketType => _$this._ticketType;
  set ticketType(String? ticketType) => _$this._ticketType = ticketType;

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

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  TicketTypeBuilder();

  TicketTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ticketType = $v.ticketType;
      _price = $v.price;
      _originalPrice = $v.originalPrice;
      _fee = $v.fee;
      _label = $v.label;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TicketType other) {
    _$v = other as _$TicketType;
  }

  @override
  void update(void Function(TicketTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TicketType build() => _build();

  _$TicketType _build() {
    final _$result = _$v ??
        _$TicketType._(
          ticketType: BuiltValueNullFieldError.checkNotNull(
              ticketType, r'TicketType', 'ticketType'),
          price: BuiltValueNullFieldError.checkNotNull(
              price, r'TicketType', 'price'),
          originalPrice: originalPrice,
          fee: fee,
          label: label,
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
