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
      'workspaceKey',
      serializers.serialize(object.workspaceKey,
          specifiedType: const FullType(String)),
      'region',
      serializers.serialize(object.region,
          specifiedType: const FullType(Region)),
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
                const FullType(List, const [const FullType(String)])));
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
                List, const [const FullType(PricingForCategory)])));
    }
    value = object.showSectionPricingOverlay;
    if (value != null) {
      result
        ..add('showSectionPricingOverlay')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.selectedObjects;
    if (value != null) {
      result
        ..add('selectedObjects')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(List, const [const FullType(String)])));
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
        case 'workspaceKey':
          result.workspaceKey = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'region':
          result.region = serializers.deserialize(value,
              specifiedType: const FullType(Region))! as Region;
          break;
        case 'event':
          result.event = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'events':
          result.events = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(String)]))
              as List<String>?;
          break;
        case 'mode':
          result.mode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pricing':
          result.pricing = serializers.deserialize(value,
                  specifiedType: const FullType(
                      List, const [const FullType(PricingForCategory)]))
              as List<PricingForCategory>?;
          break;
        case 'showSectionPricingOverlay':
          result.showSectionPricingOverlay = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'selectedObjects':
          result.selectedObjects = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(String)]))
              as List<String>?;
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
  final String workspaceKey;
  @override
  final Region region;
  @override
  final String? event;
  @override
  final List<String>? events;
  @override
  final String? mode;
  @override
  final List<PricingForCategory>? pricing;
  @override
  final Function(num price)? priceFormatter;
  @override
  final bool? showSectionPricingOverlay;
  @override
  final List<String>? selectedObjects;
  @override
  final String? language;
  @override
  final String? objectColor;

  factory _$SeatingChartConfig(
          [void Function(SeatingChartConfigBuilder)? updates]) =>
      (new SeatingChartConfigBuilder()..update(updates))._build();

  _$SeatingChartConfig._(
      {required this.workspaceKey,
      required this.region,
      this.event,
      this.events,
      this.mode,
      this.pricing,
      this.priceFormatter,
      this.showSectionPricingOverlay,
      this.selectedObjects,
      this.language,
      this.objectColor})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        workspaceKey, r'SeatingChartConfig', 'workspaceKey');
    BuiltValueNullFieldError.checkNotNull(
        region, r'SeatingChartConfig', 'region');
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
        workspaceKey == other.workspaceKey &&
        region == other.region &&
        event == other.event &&
        events == other.events &&
        mode == other.mode &&
        pricing == other.pricing &&
        priceFormatter == _$dynamicOther.priceFormatter &&
        showSectionPricingOverlay == other.showSectionPricingOverlay &&
        selectedObjects == other.selectedObjects &&
        language == other.language &&
        objectColor == other.objectColor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, workspaceKey.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, pricing.hashCode);
    _$hash = $jc(_$hash, priceFormatter.hashCode);
    _$hash = $jc(_$hash, showSectionPricingOverlay.hashCode);
    _$hash = $jc(_$hash, selectedObjects.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, objectColor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeatingChartConfig')
          ..add('workspaceKey', workspaceKey)
          ..add('region', region)
          ..add('event', event)
          ..add('events', events)
          ..add('mode', mode)
          ..add('pricing', pricing)
          ..add('priceFormatter', priceFormatter)
          ..add('showSectionPricingOverlay', showSectionPricingOverlay)
          ..add('selectedObjects', selectedObjects)
          ..add('language', language)
          ..add('objectColor', objectColor))
        .toString();
  }
}

class SeatingChartConfigBuilder
    implements Builder<SeatingChartConfig, SeatingChartConfigBuilder> {
  _$SeatingChartConfig? _$v;

  String? _workspaceKey;
  String? get workspaceKey => _$this._workspaceKey;
  set workspaceKey(String? workspaceKey) => _$this._workspaceKey = workspaceKey;

  Region? _region;
  Region? get region => _$this._region;
  set region(Region? region) => _$this._region = region;

  String? _event;
  String? get event => _$this._event;
  set event(String? event) => _$this._event = event;

  List<String>? _events;
  List<String>? get events => _$this._events;
  set events(List<String>? events) => _$this._events = events;

  String? _mode;
  String? get mode => _$this._mode;
  set mode(String? mode) => _$this._mode = mode;

  List<PricingForCategory>? _pricing;
  List<PricingForCategory>? get pricing => _$this._pricing;
  set pricing(List<PricingForCategory>? pricing) => _$this._pricing = pricing;

  Function(num price)? _priceFormatter;
  Function(num price)? get priceFormatter => _$this._priceFormatter;
  set priceFormatter(Function(num price)? priceFormatter) =>
      _$this._priceFormatter = priceFormatter;

  bool? _showSectionPricingOverlay;
  bool? get showSectionPricingOverlay => _$this._showSectionPricingOverlay;
  set showSectionPricingOverlay(bool? showSectionPricingOverlay) =>
      _$this._showSectionPricingOverlay = showSectionPricingOverlay;

  List<String>? _selectedObjects;
  List<String>? get selectedObjects => _$this._selectedObjects;
  set selectedObjects(List<String>? selectedObjects) =>
      _$this._selectedObjects = selectedObjects;

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
      _workspaceKey = $v.workspaceKey;
      _region = $v.region;
      _event = $v.event;
      _events = $v.events;
      _mode = $v.mode;
      _pricing = $v.pricing;
      _priceFormatter = $v.priceFormatter;
      _showSectionPricingOverlay = $v.showSectionPricingOverlay;
      _selectedObjects = $v.selectedObjects;
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
    final _$result = _$v ??
        new _$SeatingChartConfig._(
          workspaceKey: BuiltValueNullFieldError.checkNotNull(
              workspaceKey, r'SeatingChartConfig', 'workspaceKey'),
          region: BuiltValueNullFieldError.checkNotNull(
              region, r'SeatingChartConfig', 'region'),
          event: event,
          events: events,
          mode: mode,
          pricing: pricing,
          priceFormatter: priceFormatter,
          showSectionPricingOverlay: showSectionPricingOverlay,
          selectedObjects: selectedObjects,
          language: language,
          objectColor: objectColor,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
