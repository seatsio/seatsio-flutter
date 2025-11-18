// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing2.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Pricing2 extends Pricing2 {
  @override
  final bool? allFeesIncluded;

  factory _$Pricing2([void Function(Pricing2Builder)? updates]) =>
      (Pricing2Builder()..update(updates))._build();

  _$Pricing2._({this.allFeesIncluded}) : super._();
  @override
  Pricing2 rebuild(void Function(Pricing2Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Pricing2Builder toBuilder() => Pricing2Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Pricing2 && allFeesIncluded == other.allFeesIncluded;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allFeesIncluded.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Pricing2')
          ..add('allFeesIncluded', allFeesIncluded))
        .toString();
  }
}

class Pricing2Builder implements Builder<Pricing2, Pricing2Builder> {
  _$Pricing2? _$v;

  bool? _allFeesIncluded;
  bool? get allFeesIncluded => _$this._allFeesIncluded;
  set allFeesIncluded(bool? allFeesIncluded) =>
      _$this._allFeesIncluded = allFeesIncluded;

  Pricing2Builder();

  Pricing2Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allFeesIncluded = $v.allFeesIncluded;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Pricing2 other) {
    _$v = other as _$Pricing2;
  }

  @override
  void update(void Function(Pricing2Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Pricing2 build() => _build();

  _$Pricing2 _build() {
    final _$result = _$v ??
        _$Pricing2._(
          allFeesIncluded: allFeesIncluded,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
