// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'max_selected_objects.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MaxSelectedObjectsNumber extends MaxSelectedObjectsNumber {
  @override
  final int max;

  factory _$MaxSelectedObjectsNumber(
          [void Function(MaxSelectedObjectsNumberBuilder)? updates]) =>
      (new MaxSelectedObjectsNumberBuilder()..update(updates))._build();

  _$MaxSelectedObjectsNumber._({required this.max}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        max, r'MaxSelectedObjectsNumber', 'max');
  }

  @override
  MaxSelectedObjectsNumber rebuild(
          void Function(MaxSelectedObjectsNumberBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaxSelectedObjectsNumberBuilder toBuilder() =>
      new MaxSelectedObjectsNumberBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaxSelectedObjectsNumber && max == other.max;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MaxSelectedObjectsNumber')
          ..add('max', max))
        .toString();
  }
}

class MaxSelectedObjectsNumberBuilder
    implements
        Builder<MaxSelectedObjectsNumber, MaxSelectedObjectsNumberBuilder> {
  _$MaxSelectedObjectsNumber? _$v;

  int? _max;
  int? get max => _$this._max;
  set max(int? max) => _$this._max = max;

  MaxSelectedObjectsNumberBuilder();

  MaxSelectedObjectsNumberBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MaxSelectedObjectsNumber other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MaxSelectedObjectsNumber;
  }

  @override
  void update(void Function(MaxSelectedObjectsNumberBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MaxSelectedObjectsNumber build() => _build();

  _$MaxSelectedObjectsNumber _build() {
    final _$result = _$v ??
        new _$MaxSelectedObjectsNumber._(
          max: BuiltValueNullFieldError.checkNotNull(
              max, r'MaxSelectedObjectsNumber', 'max'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$MaxSelectedObjectsPerTicketType
    extends MaxSelectedObjectsPerTicketType {
  @override
  final BuiltList<MaxSelectedObjectsRule> rules;

  factory _$MaxSelectedObjectsPerTicketType(
          [void Function(MaxSelectedObjectsPerTicketTypeBuilder)? updates]) =>
      (new MaxSelectedObjectsPerTicketTypeBuilder()..update(updates))._build();

  _$MaxSelectedObjectsPerTicketType._({required this.rules}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        rules, r'MaxSelectedObjectsPerTicketType', 'rules');
  }

  @override
  MaxSelectedObjectsPerTicketType rebuild(
          void Function(MaxSelectedObjectsPerTicketTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaxSelectedObjectsPerTicketTypeBuilder toBuilder() =>
      new MaxSelectedObjectsPerTicketTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaxSelectedObjectsPerTicketType && rules == other.rules;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rules.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MaxSelectedObjectsPerTicketType')
          ..add('rules', rules))
        .toString();
  }
}

class MaxSelectedObjectsPerTicketTypeBuilder
    implements
        Builder<MaxSelectedObjectsPerTicketType,
            MaxSelectedObjectsPerTicketTypeBuilder> {
  _$MaxSelectedObjectsPerTicketType? _$v;

  ListBuilder<MaxSelectedObjectsRule>? _rules;
  ListBuilder<MaxSelectedObjectsRule> get rules =>
      _$this._rules ??= new ListBuilder<MaxSelectedObjectsRule>();
  set rules(ListBuilder<MaxSelectedObjectsRule>? rules) =>
      _$this._rules = rules;

  MaxSelectedObjectsPerTicketTypeBuilder();

  MaxSelectedObjectsPerTicketTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rules = $v.rules.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MaxSelectedObjectsPerTicketType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MaxSelectedObjectsPerTicketType;
  }

  @override
  void update(void Function(MaxSelectedObjectsPerTicketTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MaxSelectedObjectsPerTicketType build() => _build();

  _$MaxSelectedObjectsPerTicketType _build() {
    _$MaxSelectedObjectsPerTicketType _$result;
    try {
      _$result = _$v ??
          new _$MaxSelectedObjectsPerTicketType._(
            rules: rules.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rules';
        rules.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MaxSelectedObjectsPerTicketType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MaxSelectedObjectsRule extends MaxSelectedObjectsRule {
  @override
  final String ticketType;
  @override
  final int quantity;

  factory _$MaxSelectedObjectsRule(
          [void Function(MaxSelectedObjectsRuleBuilder)? updates]) =>
      (new MaxSelectedObjectsRuleBuilder()..update(updates))._build();

  _$MaxSelectedObjectsRule._({required this.ticketType, required this.quantity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ticketType, r'MaxSelectedObjectsRule', 'ticketType');
    BuiltValueNullFieldError.checkNotNull(
        quantity, r'MaxSelectedObjectsRule', 'quantity');
  }

  @override
  MaxSelectedObjectsRule rebuild(
          void Function(MaxSelectedObjectsRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaxSelectedObjectsRuleBuilder toBuilder() =>
      new MaxSelectedObjectsRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaxSelectedObjectsRule &&
        ticketType == other.ticketType &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ticketType.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MaxSelectedObjectsRule')
          ..add('ticketType', ticketType)
          ..add('quantity', quantity))
        .toString();
  }
}

class MaxSelectedObjectsRuleBuilder
    implements Builder<MaxSelectedObjectsRule, MaxSelectedObjectsRuleBuilder> {
  _$MaxSelectedObjectsRule? _$v;

  String? _ticketType;
  String? get ticketType => _$this._ticketType;
  set ticketType(String? ticketType) => _$this._ticketType = ticketType;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  MaxSelectedObjectsRuleBuilder();

  MaxSelectedObjectsRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ticketType = $v.ticketType;
      _quantity = $v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MaxSelectedObjectsRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MaxSelectedObjectsRule;
  }

  @override
  void update(void Function(MaxSelectedObjectsRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MaxSelectedObjectsRule build() => _build();

  _$MaxSelectedObjectsRule _build() {
    final _$result = _$v ??
        new _$MaxSelectedObjectsRule._(
          ticketType: BuiltValueNullFieldError.checkNotNull(
              ticketType, r'MaxSelectedObjectsRule', 'ticketType'),
          quantity: BuiltValueNullFieldError.checkNotNull(
              quantity, r'MaxSelectedObjectsRule', 'quantity'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
