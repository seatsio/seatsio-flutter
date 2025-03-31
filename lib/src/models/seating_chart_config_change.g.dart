// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seating_chart_config_change.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeatingChartConfigChange extends SeatingChartConfigChange {
  @override
  final String? objectColor;
  @override
  final String? objectLabel;
  @override
  final int? numberOfPlacesToSelect;
  @override
  final MaxSelectedObjects? maxSelectedObjects;
  @override
  final List<String>? availableCategories;
  @override
  final List<String>? unavailableCategories;
  @override
  final List<String>? filteredCategories;
  @override
  final List<PricingForCategory>? pricing;
  @override
  final List<String>? channels;

  factory _$SeatingChartConfigChange(
          [void Function(SeatingChartConfigChangeBuilder)? updates]) =>
      (new SeatingChartConfigChangeBuilder()..update(updates))._build();

  _$SeatingChartConfigChange._(
      {this.objectColor,
      this.objectLabel,
      this.numberOfPlacesToSelect,
      this.maxSelectedObjects,
      this.availableCategories,
      this.unavailableCategories,
      this.filteredCategories,
      this.pricing,
      this.channels})
      : super._();

  @override
  SeatingChartConfigChange rebuild(
          void Function(SeatingChartConfigChangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeatingChartConfigChangeBuilder toBuilder() =>
      new SeatingChartConfigChangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeatingChartConfigChange &&
        objectColor == other.objectColor &&
        objectLabel == other.objectLabel &&
        numberOfPlacesToSelect == other.numberOfPlacesToSelect &&
        maxSelectedObjects == other.maxSelectedObjects &&
        availableCategories == other.availableCategories &&
        unavailableCategories == other.unavailableCategories &&
        filteredCategories == other.filteredCategories &&
        pricing == other.pricing &&
        channels == other.channels;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, objectColor.hashCode);
    _$hash = $jc(_$hash, objectLabel.hashCode);
    _$hash = $jc(_$hash, numberOfPlacesToSelect.hashCode);
    _$hash = $jc(_$hash, maxSelectedObjects.hashCode);
    _$hash = $jc(_$hash, availableCategories.hashCode);
    _$hash = $jc(_$hash, unavailableCategories.hashCode);
    _$hash = $jc(_$hash, filteredCategories.hashCode);
    _$hash = $jc(_$hash, pricing.hashCode);
    _$hash = $jc(_$hash, channels.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeatingChartConfigChange')
          ..add('objectColor', objectColor)
          ..add('objectLabel', objectLabel)
          ..add('numberOfPlacesToSelect', numberOfPlacesToSelect)
          ..add('maxSelectedObjects', maxSelectedObjects)
          ..add('availableCategories', availableCategories)
          ..add('unavailableCategories', unavailableCategories)
          ..add('filteredCategories', filteredCategories)
          ..add('pricing', pricing)
          ..add('channels', channels))
        .toString();
  }
}

class SeatingChartConfigChangeBuilder
    implements
        Builder<SeatingChartConfigChange, SeatingChartConfigChangeBuilder> {
  _$SeatingChartConfigChange? _$v;

  String? _objectColor;
  String? get objectColor => _$this._objectColor;
  set objectColor(String? objectColor) => _$this._objectColor = objectColor;

  String? _objectLabel;
  String? get objectLabel => _$this._objectLabel;
  set objectLabel(String? objectLabel) => _$this._objectLabel = objectLabel;

  int? _numberOfPlacesToSelect;
  int? get numberOfPlacesToSelect => _$this._numberOfPlacesToSelect;
  set numberOfPlacesToSelect(int? numberOfPlacesToSelect) =>
      _$this._numberOfPlacesToSelect = numberOfPlacesToSelect;

  MaxSelectedObjects? _maxSelectedObjects;
  MaxSelectedObjects? get maxSelectedObjects => _$this._maxSelectedObjects;
  set maxSelectedObjects(MaxSelectedObjects? maxSelectedObjects) =>
      _$this._maxSelectedObjects = maxSelectedObjects;

  List<String>? _availableCategories;
  List<String>? get availableCategories => _$this._availableCategories;
  set availableCategories(List<String>? availableCategories) =>
      _$this._availableCategories = availableCategories;

  List<String>? _unavailableCategories;
  List<String>? get unavailableCategories => _$this._unavailableCategories;
  set unavailableCategories(List<String>? unavailableCategories) =>
      _$this._unavailableCategories = unavailableCategories;

  List<String>? _filteredCategories;
  List<String>? get filteredCategories => _$this._filteredCategories;
  set filteredCategories(List<String>? filteredCategories) =>
      _$this._filteredCategories = filteredCategories;

  List<PricingForCategory>? _pricing;
  List<PricingForCategory>? get pricing => _$this._pricing;
  set pricing(List<PricingForCategory>? pricing) => _$this._pricing = pricing;

  List<String>? _channels;
  List<String>? get channels => _$this._channels;
  set channels(List<String>? channels) => _$this._channels = channels;

  SeatingChartConfigChangeBuilder();

  SeatingChartConfigChangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _objectColor = $v.objectColor;
      _objectLabel = $v.objectLabel;
      _numberOfPlacesToSelect = $v.numberOfPlacesToSelect;
      _maxSelectedObjects = $v.maxSelectedObjects;
      _availableCategories = $v.availableCategories;
      _unavailableCategories = $v.unavailableCategories;
      _filteredCategories = $v.filteredCategories;
      _pricing = $v.pricing;
      _channels = $v.channels;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeatingChartConfigChange other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SeatingChartConfigChange;
  }

  @override
  void update(void Function(SeatingChartConfigChangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeatingChartConfigChange build() => _build();

  _$SeatingChartConfigChange _build() {
    final _$result = _$v ??
        new _$SeatingChartConfigChange._(
          objectColor: objectColor,
          objectLabel: objectLabel,
          numberOfPlacesToSelect: numberOfPlacesToSelect,
          maxSelectedObjects: maxSelectedObjects,
          availableCategories: availableCategories,
          unavailableCategories: unavailableCategories,
          filteredCategories: filteredCategories,
          pricing: pricing,
          channels: channels,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
