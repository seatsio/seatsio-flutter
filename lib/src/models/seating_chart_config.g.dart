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
                const FullType(BuiltList, const [const FullType(String)])));
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
        case 'region':
          result.region = serializers.deserialize(value,
              specifiedType: const FullType(Region))! as Region;
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
  final String? event;
  @override
  final BuiltList<String>? events;
  @override
  final Region region;

  factory _$SeatingChartConfig(
          [void Function(SeatingChartConfigBuilder)? updates]) =>
      (new SeatingChartConfigBuilder()..update(updates))._build();

  _$SeatingChartConfig._(
      {required this.workspaceKey,
      this.event,
      this.events,
      required this.region})
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
    return other is SeatingChartConfig &&
        workspaceKey == other.workspaceKey &&
        event == other.event &&
        events == other.events &&
        region == other.region;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, workspaceKey.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeatingChartConfig')
          ..add('workspaceKey', workspaceKey)
          ..add('event', event)
          ..add('events', events)
          ..add('region', region))
        .toString();
  }
}

class SeatingChartConfigBuilder
    implements Builder<SeatingChartConfig, SeatingChartConfigBuilder> {
  _$SeatingChartConfig? _$v;

  String? _workspaceKey;
  String? get workspaceKey => _$this._workspaceKey;
  set workspaceKey(String? workspaceKey) => _$this._workspaceKey = workspaceKey;

  String? _event;
  String? get event => _$this._event;
  set event(String? event) => _$this._event = event;

  ListBuilder<String>? _events;
  ListBuilder<String> get events =>
      _$this._events ??= new ListBuilder<String>();
  set events(ListBuilder<String>? events) => _$this._events = events;

  Region? _region;
  Region? get region => _$this._region;
  set region(Region? region) => _$this._region = region;

  SeatingChartConfigBuilder() {
    SeatingChartConfig._initializeBuilder(this);
  }

  SeatingChartConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _workspaceKey = $v.workspaceKey;
      _event = $v.event;
      _events = $v.events?.toBuilder();
      _region = $v.region;
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
            workspaceKey: BuiltValueNullFieldError.checkNotNull(
                workspaceKey, r'SeatingChartConfig', 'workspaceKey'),
            event: event,
            events: _events?.build(),
            region: BuiltValueNullFieldError.checkNotNull(
                region, r'SeatingChartConfig', 'region'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'events';
        _events?.build();
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
