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

class _$ConsecutiveSeats extends ConsecutiveSeats {
  factory _$ConsecutiveSeats(
          [void Function(ConsecutiveSeatsBuilder)? updates]) =>
      (new ConsecutiveSeatsBuilder()..update(updates))._build();

  _$ConsecutiveSeats._() : super._();

  @override
  ConsecutiveSeats rebuild(void Function(ConsecutiveSeatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsecutiveSeatsBuilder toBuilder() =>
      new ConsecutiveSeatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsecutiveSeats;
  }

  @override
  int get hashCode {
    return 1070419616;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'ConsecutiveSeats').toString();
  }
}

class ConsecutiveSeatsBuilder
    implements Builder<ConsecutiveSeats, ConsecutiveSeatsBuilder> {
  _$ConsecutiveSeats? _$v;

  ConsecutiveSeatsBuilder();

  @override
  void replace(ConsecutiveSeats other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConsecutiveSeats;
  }

  @override
  void update(void Function(ConsecutiveSeatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsecutiveSeats build() => _build();

  _$ConsecutiveSeats _build() {
    final _$result = _$v ?? new _$ConsecutiveSeats._();
    replace(_$result);
    return _$result;
  }
}

class _$MinimumSelectedPlaces extends MinimumSelectedPlaces {
  @override
  final int minimum;

  factory _$MinimumSelectedPlaces(
          [void Function(MinimumSelectedPlacesBuilder)? updates]) =>
      (new MinimumSelectedPlacesBuilder()..update(updates))._build();

  _$MinimumSelectedPlaces._({required this.minimum}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        minimum, r'MinimumSelectedPlaces', 'minimum');
  }

  @override
  MinimumSelectedPlaces rebuild(
          void Function(MinimumSelectedPlacesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MinimumSelectedPlacesBuilder toBuilder() =>
      new MinimumSelectedPlacesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MinimumSelectedPlaces && minimum == other.minimum;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minimum.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MinimumSelectedPlaces')
          ..add('minimum', minimum))
        .toString();
  }
}

class MinimumSelectedPlacesBuilder
    implements Builder<MinimumSelectedPlaces, MinimumSelectedPlacesBuilder> {
  _$MinimumSelectedPlaces? _$v;

  int? _minimum;
  int? get minimum => _$this._minimum;
  set minimum(int? minimum) => _$this._minimum = minimum;

  MinimumSelectedPlacesBuilder();

  MinimumSelectedPlacesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minimum = $v.minimum;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MinimumSelectedPlaces other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MinimumSelectedPlaces;
  }

  @override
  void update(void Function(MinimumSelectedPlacesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MinimumSelectedPlaces build() => _build();

  _$MinimumSelectedPlaces _build() {
    final _$result = _$v ??
        new _$MinimumSelectedPlaces._(
          minimum: BuiltValueNullFieldError.checkNotNull(
              minimum, r'MinimumSelectedPlaces', 'minimum'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
