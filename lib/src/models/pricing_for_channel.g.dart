// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing_for_channel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PricingForChannel> _$pricingForChannelSerializer =
    new _$PricingForChannelSerializer();

class _$PricingForChannelSerializer
    implements StructuredSerializer<PricingForChannel> {
  @override
  final Iterable<Type> types = const [PricingForChannel, _$PricingForChannel];
  @override
  final String wireName = 'PricingForChannel';

  @override
  Iterable<Object?> serialize(Serializers serializers, PricingForChannel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'channel',
      serializers.serialize(object.channel,
          specifiedType: const FullType(String)),
    ];
    Object? value;
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
    return result;
  }

  @override
  PricingForChannel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PricingForChannelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'channel':
          result.channel = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
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
      }
    }

    return result.build();
  }
}

class _$PricingForChannel extends PricingForChannel {
  @override
  final String channel;
  @override
  final double? price;
  @override
  final double? originalPrice;
  @override
  final BuiltList<TicketType>? ticketTypes;

  factory _$PricingForChannel(
          [void Function(PricingForChannelBuilder)? updates]) =>
      (new PricingForChannelBuilder()..update(updates))._build();

  _$PricingForChannel._(
      {required this.channel, this.price, this.originalPrice, this.ticketTypes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        channel, r'PricingForChannel', 'channel');
  }

  @override
  PricingForChannel rebuild(void Function(PricingForChannelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PricingForChannelBuilder toBuilder() =>
      new PricingForChannelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PricingForChannel &&
        channel == other.channel &&
        price == other.price &&
        originalPrice == other.originalPrice &&
        ticketTypes == other.ticketTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, channel.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, originalPrice.hashCode);
    _$hash = $jc(_$hash, ticketTypes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PricingForChannel')
          ..add('channel', channel)
          ..add('price', price)
          ..add('originalPrice', originalPrice)
          ..add('ticketTypes', ticketTypes))
        .toString();
  }
}

class PricingForChannelBuilder
    implements Builder<PricingForChannel, PricingForChannelBuilder> {
  _$PricingForChannel? _$v;

  String? _channel;
  String? get channel => _$this._channel;
  set channel(String? channel) => _$this._channel = channel;

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

  PricingForChannelBuilder();

  PricingForChannelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _channel = $v.channel;
      _price = $v.price;
      _originalPrice = $v.originalPrice;
      _ticketTypes = $v.ticketTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PricingForChannel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PricingForChannel;
  }

  @override
  void update(void Function(PricingForChannelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PricingForChannel build() => _build();

  _$PricingForChannel _build() {
    _$PricingForChannel _$result;
    try {
      _$result = _$v ??
          new _$PricingForChannel._(
            channel: BuiltValueNullFieldError.checkNotNull(
                channel, r'PricingForChannel', 'channel'),
            price: price,
            originalPrice: originalPrice,
            ticketTypes: _ticketTypes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ticketTypes';
        _ticketTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PricingForChannel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
