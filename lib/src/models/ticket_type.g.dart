// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TicketType> _$ticketTypeSerializer = new _$TicketTypeSerializer();

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
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
    ];
    Object? value;
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
    final result = new TicketTypeBuilder();

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
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
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
  final String label;
  @override
  final String? description;

  factory _$TicketType([void Function(TicketTypeBuilder)? updates]) =>
      (new TicketTypeBuilder()..update(updates))._build();

  _$TicketType._(
      {required this.ticketType,
      required this.price,
      required this.label,
      this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ticketType, r'TicketType', 'ticketType');
    BuiltValueNullFieldError.checkNotNull(price, r'TicketType', 'price');
    BuiltValueNullFieldError.checkNotNull(label, r'TicketType', 'label');
  }

  @override
  TicketType rebuild(void Function(TicketTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TicketTypeBuilder toBuilder() => new TicketTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TicketType &&
        ticketType == other.ticketType &&
        price == other.price &&
        label == other.label &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ticketType.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
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
      _label = $v.label;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TicketType other) {
    ArgumentError.checkNotNull(other, 'other');
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
        new _$TicketType._(
          ticketType: BuiltValueNullFieldError.checkNotNull(
              ticketType, r'TicketType', 'ticketType'),
          price: BuiltValueNullFieldError.checkNotNull(
              price, r'TicketType', 'price'),
          label: BuiltValueNullFieldError.checkNotNull(
              label, r'TicketType', 'label'),
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
