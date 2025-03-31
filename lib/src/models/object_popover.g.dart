// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_popover.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectPopover extends ObjectPopover {
  @override
  final bool? showAvailability;
  @override
  final bool? showCategory;
  @override
  final bool? showLabel;
  @override
  final bool? showPricing;
  @override
  final bool? showUnavailableNotice;
  @override
  final bool? stylizedLabel;
  @override
  final String? confirmSelection;
  @override
  final bool? confirmTicketTypeSelection;

  factory _$ObjectPopover([void Function(ObjectPopoverBuilder)? updates]) =>
      (new ObjectPopoverBuilder()..update(updates))._build();

  _$ObjectPopover._(
      {this.showAvailability,
      this.showCategory,
      this.showLabel,
      this.showPricing,
      this.showUnavailableNotice,
      this.stylizedLabel,
      this.confirmSelection,
      this.confirmTicketTypeSelection})
      : super._();

  @override
  ObjectPopover rebuild(void Function(ObjectPopoverBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectPopoverBuilder toBuilder() => new ObjectPopoverBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectPopover &&
        showAvailability == other.showAvailability &&
        showCategory == other.showCategory &&
        showLabel == other.showLabel &&
        showPricing == other.showPricing &&
        showUnavailableNotice == other.showUnavailableNotice &&
        stylizedLabel == other.stylizedLabel &&
        confirmSelection == other.confirmSelection &&
        confirmTicketTypeSelection == other.confirmTicketTypeSelection;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, showAvailability.hashCode);
    _$hash = $jc(_$hash, showCategory.hashCode);
    _$hash = $jc(_$hash, showLabel.hashCode);
    _$hash = $jc(_$hash, showPricing.hashCode);
    _$hash = $jc(_$hash, showUnavailableNotice.hashCode);
    _$hash = $jc(_$hash, stylizedLabel.hashCode);
    _$hash = $jc(_$hash, confirmSelection.hashCode);
    _$hash = $jc(_$hash, confirmTicketTypeSelection.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObjectPopover')
          ..add('showAvailability', showAvailability)
          ..add('showCategory', showCategory)
          ..add('showLabel', showLabel)
          ..add('showPricing', showPricing)
          ..add('showUnavailableNotice', showUnavailableNotice)
          ..add('stylizedLabel', stylizedLabel)
          ..add('confirmSelection', confirmSelection)
          ..add('confirmTicketTypeSelection', confirmTicketTypeSelection))
        .toString();
  }
}

class ObjectPopoverBuilder
    implements Builder<ObjectPopover, ObjectPopoverBuilder> {
  _$ObjectPopover? _$v;

  bool? _showAvailability;
  bool? get showAvailability => _$this._showAvailability;
  set showAvailability(bool? showAvailability) =>
      _$this._showAvailability = showAvailability;

  bool? _showCategory;
  bool? get showCategory => _$this._showCategory;
  set showCategory(bool? showCategory) => _$this._showCategory = showCategory;

  bool? _showLabel;
  bool? get showLabel => _$this._showLabel;
  set showLabel(bool? showLabel) => _$this._showLabel = showLabel;

  bool? _showPricing;
  bool? get showPricing => _$this._showPricing;
  set showPricing(bool? showPricing) => _$this._showPricing = showPricing;

  bool? _showUnavailableNotice;
  bool? get showUnavailableNotice => _$this._showUnavailableNotice;
  set showUnavailableNotice(bool? showUnavailableNotice) =>
      _$this._showUnavailableNotice = showUnavailableNotice;

  bool? _stylizedLabel;
  bool? get stylizedLabel => _$this._stylizedLabel;
  set stylizedLabel(bool? stylizedLabel) =>
      _$this._stylizedLabel = stylizedLabel;

  String? _confirmSelection;
  String? get confirmSelection => _$this._confirmSelection;
  set confirmSelection(String? confirmSelection) =>
      _$this._confirmSelection = confirmSelection;

  bool? _confirmTicketTypeSelection;
  bool? get confirmTicketTypeSelection => _$this._confirmTicketTypeSelection;
  set confirmTicketTypeSelection(bool? confirmTicketTypeSelection) =>
      _$this._confirmTicketTypeSelection = confirmTicketTypeSelection;

  ObjectPopoverBuilder() {
    ObjectPopover._initializeBuilder(this);
  }

  ObjectPopoverBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _showAvailability = $v.showAvailability;
      _showCategory = $v.showCategory;
      _showLabel = $v.showLabel;
      _showPricing = $v.showPricing;
      _showUnavailableNotice = $v.showUnavailableNotice;
      _stylizedLabel = $v.stylizedLabel;
      _confirmSelection = $v.confirmSelection;
      _confirmTicketTypeSelection = $v.confirmTicketTypeSelection;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectPopover other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ObjectPopover;
  }

  @override
  void update(void Function(ObjectPopoverBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectPopover build() => _build();

  _$ObjectPopover _build() {
    final _$result = _$v ??
        new _$ObjectPopover._(
          showAvailability: showAvailability,
          showCategory: showCategory,
          showLabel: showLabel,
          showPricing: showPricing,
          showUnavailableNotice: showUnavailableNotice,
          stylizedLabel: stylizedLabel,
          confirmSelection: confirmSelection,
          confirmTicketTypeSelection: confirmTicketTypeSelection,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
