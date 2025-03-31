// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legend_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LegendConfig extends LegendConfig {
  @override
  final bool? hideNonSelectableCategories;
  @override
  final bool? hideUnavailableLegendItems;
  @override
  final bool? hidePricing;
  @override
  final bool? hideCategoryName;

  factory _$LegendConfig([void Function(LegendConfigBuilder)? updates]) =>
      (new LegendConfigBuilder()..update(updates))._build();

  _$LegendConfig._(
      {this.hideNonSelectableCategories,
      this.hideUnavailableLegendItems,
      this.hidePricing,
      this.hideCategoryName})
      : super._();

  @override
  LegendConfig rebuild(void Function(LegendConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LegendConfigBuilder toBuilder() => new LegendConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LegendConfig &&
        hideNonSelectableCategories == other.hideNonSelectableCategories &&
        hideUnavailableLegendItems == other.hideUnavailableLegendItems &&
        hidePricing == other.hidePricing &&
        hideCategoryName == other.hideCategoryName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hideNonSelectableCategories.hashCode);
    _$hash = $jc(_$hash, hideUnavailableLegendItems.hashCode);
    _$hash = $jc(_$hash, hidePricing.hashCode);
    _$hash = $jc(_$hash, hideCategoryName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LegendConfig')
          ..add('hideNonSelectableCategories', hideNonSelectableCategories)
          ..add('hideUnavailableLegendItems', hideUnavailableLegendItems)
          ..add('hidePricing', hidePricing)
          ..add('hideCategoryName', hideCategoryName))
        .toString();
  }
}

class LegendConfigBuilder
    implements Builder<LegendConfig, LegendConfigBuilder> {
  _$LegendConfig? _$v;

  bool? _hideNonSelectableCategories;
  bool? get hideNonSelectableCategories => _$this._hideNonSelectableCategories;
  set hideNonSelectableCategories(bool? hideNonSelectableCategories) =>
      _$this._hideNonSelectableCategories = hideNonSelectableCategories;

  bool? _hideUnavailableLegendItems;
  bool? get hideUnavailableLegendItems => _$this._hideUnavailableLegendItems;
  set hideUnavailableLegendItems(bool? hideUnavailableLegendItems) =>
      _$this._hideUnavailableLegendItems = hideUnavailableLegendItems;

  bool? _hidePricing;
  bool? get hidePricing => _$this._hidePricing;
  set hidePricing(bool? hidePricing) => _$this._hidePricing = hidePricing;

  bool? _hideCategoryName;
  bool? get hideCategoryName => _$this._hideCategoryName;
  set hideCategoryName(bool? hideCategoryName) =>
      _$this._hideCategoryName = hideCategoryName;

  LegendConfigBuilder() {
    LegendConfig._initializeBuilder(this);
  }

  LegendConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hideNonSelectableCategories = $v.hideNonSelectableCategories;
      _hideUnavailableLegendItems = $v.hideUnavailableLegendItems;
      _hidePricing = $v.hidePricing;
      _hideCategoryName = $v.hideCategoryName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LegendConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LegendConfig;
  }

  @override
  void update(void Function(LegendConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LegendConfig build() => _build();

  _$LegendConfig _build() {
    final _$result = _$v ??
        new _$LegendConfig._(
          hideNonSelectableCategories: hideNonSelectableCategories,
          hideUnavailableLegendItems: hideUnavailableLegendItems,
          hidePricing: hidePricing,
          hideCategoryName: hideCategoryName,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
