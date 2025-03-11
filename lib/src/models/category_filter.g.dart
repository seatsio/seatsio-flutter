// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryFilter extends CategoryFilter {
  @override
  final bool? enabled;
  @override
  final bool? multiSelect;
  @override
  final bool? zoomOnSelect;
  @override
  final CategoryFilterSortBy? sortBy;

  factory _$CategoryFilter([void Function(CategoryFilterBuilder)? updates]) =>
      (new CategoryFilterBuilder()..update(updates))._build();

  _$CategoryFilter._(
      {this.enabled, this.multiSelect, this.zoomOnSelect, this.sortBy})
      : super._();

  @override
  CategoryFilter rebuild(void Function(CategoryFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryFilterBuilder toBuilder() =>
      new CategoryFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryFilter &&
        enabled == other.enabled &&
        multiSelect == other.multiSelect &&
        zoomOnSelect == other.zoomOnSelect &&
        sortBy == other.sortBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, multiSelect.hashCode);
    _$hash = $jc(_$hash, zoomOnSelect.hashCode);
    _$hash = $jc(_$hash, sortBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryFilter')
          ..add('enabled', enabled)
          ..add('multiSelect', multiSelect)
          ..add('zoomOnSelect', zoomOnSelect)
          ..add('sortBy', sortBy))
        .toString();
  }
}

class CategoryFilterBuilder
    implements Builder<CategoryFilter, CategoryFilterBuilder> {
  _$CategoryFilter? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _multiSelect;
  bool? get multiSelect => _$this._multiSelect;
  set multiSelect(bool? multiSelect) => _$this._multiSelect = multiSelect;

  bool? _zoomOnSelect;
  bool? get zoomOnSelect => _$this._zoomOnSelect;
  set zoomOnSelect(bool? zoomOnSelect) => _$this._zoomOnSelect = zoomOnSelect;

  CategoryFilterSortBy? _sortBy;
  CategoryFilterSortBy? get sortBy => _$this._sortBy;
  set sortBy(CategoryFilterSortBy? sortBy) => _$this._sortBy = sortBy;

  CategoryFilterBuilder() {
    CategoryFilter._initializeBuilder(this);
  }

  CategoryFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _multiSelect = $v.multiSelect;
      _zoomOnSelect = $v.zoomOnSelect;
      _sortBy = $v.sortBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryFilter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoryFilter;
  }

  @override
  void update(void Function(CategoryFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryFilter build() => _build();

  _$CategoryFilter _build() {
    final _$result = _$v ??
        new _$CategoryFilter._(
          enabled: enabled,
          multiSelect: multiSelect,
          zoomOnSelect: zoomOnSelect,
          sortBy: sortBy,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
