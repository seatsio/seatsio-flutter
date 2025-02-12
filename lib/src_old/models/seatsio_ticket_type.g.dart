// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seatsio_ticket_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SeatsioTicketType> _$seatsioTicketTypeSerializer =
    new _$SeatsioTicketTypeSerializer();

class _$SeatsioTicketTypeSerializer
    implements StructuredSerializer<SeatsioTicketType> {
  @override
  final Iterable<Type> types = const [SeatsioTicketType, _$SeatsioTicketType];
  @override
  final String wireName = 'SeatsioTicketType';

  @override
  Iterable<Object?> serialize(Serializers serializers, SeatsioTicketType object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
      'ticketType',
      serializers.serialize(object.ticketType,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SeatsioTicketType deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SeatsioTicketTypeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'ticketType':
          result.ticketType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SeatsioTicketType extends SeatsioTicketType {
  @override
  final double price;
  @override
  final String ticketType;

  factory _$SeatsioTicketType(
          [void Function(SeatsioTicketTypeBuilder)? updates]) =>
      (new SeatsioTicketTypeBuilder()..update(updates))._build();

  _$SeatsioTicketType._({required this.price, required this.ticketType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(price, r'SeatsioTicketType', 'price');
    BuiltValueNullFieldError.checkNotNull(
        ticketType, r'SeatsioTicketType', 'ticketType');
  }

  @override
  SeatsioTicketType rebuild(void Function(SeatsioTicketTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeatsioTicketTypeBuilder toBuilder() =>
      new SeatsioTicketTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeatsioTicketType &&
        price == other.price &&
        ticketType == other.ticketType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, ticketType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeatsioTicketType')
          ..add('price', price)
          ..add('ticketType', ticketType))
        .toString();
  }
}

class SeatsioTicketTypeBuilder
    implements Builder<SeatsioTicketType, SeatsioTicketTypeBuilder> {
  _$SeatsioTicketType? _$v;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _ticketType;
  String? get ticketType => _$this._ticketType;
  set ticketType(String? ticketType) => _$this._ticketType = ticketType;

  SeatsioTicketTypeBuilder();

  SeatsioTicketTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _price = $v.price;
      _ticketType = $v.ticketType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeatsioTicketType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SeatsioTicketType;
  }

  @override
  void update(void Function(SeatsioTicketTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeatsioTicketType build() => _build();

  _$SeatsioTicketType _build() {
    final _$result = _$v ??
        new _$SeatsioTicketType._(
          price: BuiltValueNullFieldError.checkNotNull(
              price, r'SeatsioTicketType', 'price'),
          ticketType: BuiltValueNullFieldError.checkNotNull(
              ticketType, r'SeatsioTicketType', 'ticketType'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
