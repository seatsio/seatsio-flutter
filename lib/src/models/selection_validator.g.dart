// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selection_validator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoOrphanSeats extends NoOrphanSeats {
  @override
  final NoOrphanSeatsMode? mode;
  @override
  final bool? ignoreCategories;
  @override
  final bool? highlight;

  factory _$NoOrphanSeats([void Function(NoOrphanSeatsBuilder)? updates]) =>
      (new NoOrphanSeatsBuilder()..update(updates))._build();

  _$NoOrphanSeats._({this.mode, this.ignoreCategories, this.highlight})
      : super._();

  @override
  NoOrphanSeats rebuild(void Function(NoOrphanSeatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoOrphanSeatsBuilder toBuilder() => new NoOrphanSeatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoOrphanSeats &&
        mode == other.mode &&
        ignoreCategories == other.ignoreCategories &&
        highlight == other.highlight;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, ignoreCategories.hashCode);
    _$hash = $jc(_$hash, highlight.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NoOrphanSeats')
          ..add('mode', mode)
          ..add('ignoreCategories', ignoreCategories)
          ..add('highlight', highlight))
        .toString();
  }
}

class NoOrphanSeatsBuilder
    implements Builder<NoOrphanSeats, NoOrphanSeatsBuilder> {
  _$NoOrphanSeats? _$v;

  NoOrphanSeatsMode? _mode;
  NoOrphanSeatsMode? get mode => _$this._mode;
  set mode(NoOrphanSeatsMode? mode) => _$this._mode = mode;

  bool? _ignoreCategories;
  bool? get ignoreCategories => _$this._ignoreCategories;
  set ignoreCategories(bool? ignoreCategories) =>
      _$this._ignoreCategories = ignoreCategories;

  bool? _highlight;
  bool? get highlight => _$this._highlight;
  set highlight(bool? highlight) => _$this._highlight = highlight;

  NoOrphanSeatsBuilder();

  NoOrphanSeatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mode = $v.mode;
      _ignoreCategories = $v.ignoreCategories;
      _highlight = $v.highlight;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoOrphanSeats other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoOrphanSeats;
  }

  @override
  void update(void Function(NoOrphanSeatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoOrphanSeats build() => _build();

  _$NoOrphanSeats _build() {
    final _$result = _$v ??
        new _$NoOrphanSeats._(
          mode: mode,
          ignoreCategories: ignoreCategories,
          highlight: highlight,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
