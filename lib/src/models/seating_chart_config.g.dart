// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seating_chart_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SeatingChartConfig> _$seatingChartConfigSerializer =
    new _$SeatingChartConfigSerializer();

class _$SeatingChartConfigSerializer
    implements StructuredSerializer<SeatingChartConfig> {
  @override
  final Iterable<Type> types = const [SeatingChartConfig, _$SeatingChartConfig];
  @override
  final String wireName = 'SeatingChartConfig';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SeatingChartConfig object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'region',
      serializers.serialize(object.region,
          specifiedType: const FullType(Region)),
      'workspaceKey',
      serializers.serialize(object.workspaceKey,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.event;
    if (value != null) {
      result
        ..add('event')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.events;
    if (value != null) {
      result
        ..add('events')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.mode;
    if (value != null) {
      result
        ..add('mode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pricing;
    if (value != null) {
      result
        ..add('pricing')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PricingForCategory)])));
    }
    value = object.language;
    if (value != null) {
      result
        ..add('language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SeatingChartConfig deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SeatingChartConfigBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'region':
          result.region = serializers.deserialize(value,
              specifiedType: const FullType(Region))! as Region;
          break;
        case 'event':
          result.event = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'events':
          result.events.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'workspaceKey':
          result.workspaceKey = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'mode':
          result.mode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pricing':
          result.pricing.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PricingForCategory)]))!
              as BuiltList<Object?>);
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$SeatingChartConfig extends SeatingChartConfig {
  @override
  final Region region;
  @override
  final String? event;
  @override
  final BuiltList<String>? events;
  @override
  final String workspaceKey;
  @override
  final String? mode;
  @override
  final BuiltList<PricingForCategory>? pricing;
  @override
  final Function(num price)? priceFormatter;
  @override
  final String? language;
  @override
  final String? objectColor;

  factory _$SeatingChartConfig(
          [void Function(SeatingChartConfigBuilder)? updates]) =>
      (new SeatingChartConfigBuilder()..update(updates))._build();

  _$SeatingChartConfig._(
      {required this.region,
      this.event,
      this.events,
      required this.workspaceKey,
      this.mode,
      this.pricing,
      this.priceFormatter,
      this.language,
      this.objectColor})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        region, r'SeatingChartConfig', 'region');
    BuiltValueNullFieldError.checkNotNull(
        workspaceKey, r'SeatingChartConfig', 'workspaceKey');
  }

  @override
  SeatingChartConfig rebuild(
          void Function(SeatingChartConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeatingChartConfigBuilder toBuilder() =>
      new SeatingChartConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is SeatingChartConfig &&
        region == other.region &&
        event == other.event &&
        events == other.events &&
        workspaceKey == other.workspaceKey &&
        mode == other.mode &&
        pricing == other.pricing &&
        priceFormatter == _$dynamicOther.priceFormatter &&
        language == other.language &&
        objectColor == other.objectColor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jc(_$hash, workspaceKey.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, pricing.hashCode);
    _$hash = $jc(_$hash, priceFormatter.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, objectColor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeatingChartConfig')
          ..add('region', region)
          ..add('event', event)
          ..add('events', events)
          ..add('workspaceKey', workspaceKey)
          ..add('mode', mode)
          ..add('pricing', pricing)
          ..add('priceFormatter', priceFormatter)
          ..add('language', language)
          ..add('objectColor', objectColor))
        .toString();
  }
}

class SeatingChartConfigBuilder
    implements Builder<SeatingChartConfig, SeatingChartConfigBuilder> {
  _$SeatingChartConfig? _$v;

  Region? _region;
  Region? get region => _$this._region;
  set region(Region? region) => _$this._region = region;

  String? _event;
  String? get event => _$this._event;
  set event(String? event) => _$this._event = event;

  ListBuilder<String>? _events;
  ListBuilder<String> get events =>
      _$this._events ??= new ListBuilder<String>();
  set events(ListBuilder<String>? events) => _$this._events = events;

  String? _workspaceKey;
  String? get workspaceKey => _$this._workspaceKey;
  set workspaceKey(String? workspaceKey) => _$this._workspaceKey = workspaceKey;

  String? _mode;
  String? get mode => _$this._mode;
  set mode(String? mode) => _$this._mode = mode;

  ListBuilder<PricingForCategory>? _pricing;
  ListBuilder<PricingForCategory> get pricing =>
      _$this._pricing ??= new ListBuilder<PricingForCategory>();
  set pricing(ListBuilder<PricingForCategory>? pricing) =>
      _$this._pricing = pricing;

  Function(num price)? _priceFormatter;
  Function(num price)? get priceFormatter => _$this._priceFormatter;
  set priceFormatter(Function(num price)? priceFormatter) =>
      _$this._priceFormatter = priceFormatter;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _objectColor;
  String? get objectColor => _$this._objectColor;
  set objectColor(String? objectColor) => _$this._objectColor = objectColor;

  SeatingChartConfigBuilder() {
    SeatingChartConfig._initializeBuilder(this);
  }

  SeatingChartConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _region = $v.region;
      _event = $v.event;
      _events = $v.events?.toBuilder();
      _workspaceKey = $v.workspaceKey;
      _mode = $v.mode;
      _pricing = $v.pricing?.toBuilder();
      _priceFormatter = $v.priceFormatter;
      _language = $v.language;
      _objectColor = $v.objectColor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeatingChartConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SeatingChartConfig;
  }

  @override
  void update(void Function(SeatingChartConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeatingChartConfig build() => _build();

  _$SeatingChartConfig _build() {
    _$SeatingChartConfig _$result;
    try {
      _$result = _$v ??
          new _$SeatingChartConfig._(
            region: BuiltValueNullFieldError.checkNotNull(
                region, r'SeatingChartConfig', 'region'),
            event: event,
            events: _events?.build(),
            workspaceKey: BuiltValueNullFieldError.checkNotNull(
                workspaceKey, r'SeatingChartConfig', 'workspaceKey'),
            mode: mode,
            pricing: _pricing?.build(),
            priceFormatter: priceFormatter,
            language: language,
            objectColor: objectColor,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'events';
        _events?.build();

        _$failedField = 'pricing';
        _pricing?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SeatingChartConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
