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
      'messages',
      serializers.serialize(object.messages,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(String)])),
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
    value = object.selectableObjects;
    if (value != null) {
      result
        ..add('selectableObjects')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(List, const [const FullType(String)])));
    }
    value = object.selectionValidators;
    if (value != null) {
      result
        ..add('selectionValidators')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                List, const [const FullType(SelectionValidator)])));
    }
    value = object.maxSelectedObjects;
    if (value != null) {
      result
        ..add('maxSelectedObjects')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(MaxSelectedObjects)));
    }
    value = object.numberOfPlacesToSelect;
    if (value != null) {
      result
        ..add('numberOfPlacesToSelect')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.multiSelectEnabled;
    if (value != null) {
      result
        ..add('multiSelectEnabled')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.objectsWithoutPricingSelectable;
    if (value != null) {
      result
        ..add('objectsWithoutPricingSelectable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.objectPopover;
    if (value != null) {
      result
        ..add('objectPopover')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ObjectPopover)));
    }
    value = object.showActiveSectionTooltipOnMobile;
    if (value != null) {
      result
        ..add('showActiveSectionTooltipOnMobile')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.language;
    if (value != null) {
      result
        ..add('language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categoryFilter;
    if (value != null) {
      result
        ..add('categoryFilter')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(CategoryFilter)));
    }
    value = object.availableCategories;
    if (value != null) {
      result
        ..add('availableCategories')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(List, const [const FullType(String)])));
    }
    value = object.unavailableCategories;
    if (value != null) {
      result
        ..add('unavailableCategories')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(List, const [const FullType(String)])));
    }
    value = object.filteredCategories;
    if (value != null) {
      result
        ..add('filteredCategories')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(List, const [const FullType(String)])));
    }
    value = object.channels;
    if (value != null) {
      result
        ..add('channels')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(List, const [const FullType(String)])));
    }
    value = object.showSectionContents;
    if (value != null) {
      result
        ..add('showSectionContents')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ShowSectionContents)));
    }
    value = object.hideSectionsNotForSale;
    if (value != null) {
      result
        ..add('hideSectionsNotForSale')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.showSeatLabels;
    if (value != null) {
      result
        ..add('showSeatLabels')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.session;
    if (value != null) {
      result
        ..add('session')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Session)));
    }
    value = object.holdToken;
    if (value != null) {
      result
        ..add('holdToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.holdOnSelectForGAs;
    if (value != null) {
      result
        ..add('holdOnSelectForGAs')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.showMinimap;
    if (value != null) {
      result
        ..add('showMinimap')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.showFullScreenButton;
    if (value != null) {
      result
        ..add('showFullScreenButton')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.showLegend;
    if (value != null) {
      result
        ..add('showLegend')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.legendConfig;
    if (value != null) {
      result
        ..add('legendConfig')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LegendConfig)));
    }
    value = object.showZoomOutButtonOnMobile;
    if (value != null) {
      result
        ..add('showZoomOutButtonOnMobile')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.colorScheme;
    if (value != null) {
      result
        ..add('colorScheme')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SeatsioColorScheme)));
    }
    value = object.colors;
    if (value != null) {
      result
        ..add('colors')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SeatsioColors)));
    }
    value = object.activeFloor;
    if (value != null) {
      result
        ..add('activeFloor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lockActiveFloor;
    if (value != null) {
      result
        ..add('lockActiveFloor')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.showFloorElevator;
    if (value != null) {
      result
        ..add('showFloorElevator')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
        case 'selectableObjects':
          result.selectableObjects = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(String)]))
              as List<String>?;
          break;
        case 'selectionValidators':
          result.selectionValidators = serializers.deserialize(value,
                  specifiedType: const FullType(
                      List, const [const FullType(SelectionValidator)]))
              as List<SelectionValidator>?;
          break;
        case 'maxSelectedObjects':
          result.maxSelectedObjects = serializers.deserialize(value,
                  specifiedType: const FullType(MaxSelectedObjects))
              as MaxSelectedObjects?;
          break;
        case 'numberOfPlacesToSelect':
          result.numberOfPlacesToSelect = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'multiSelectEnabled':
          result.multiSelectEnabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'objectsWithoutPricingSelectable':
          result.objectsWithoutPricingSelectable = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool?;
          break;
        case 'objectPopover':
          result.objectPopover.replace(serializers.deserialize(value,
              specifiedType: const FullType(ObjectPopover))! as ObjectPopover);
          break;
        case 'showActiveSectionTooltipOnMobile':
          result.showActiveSectionTooltipOnMobile = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool?;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'messages':
          result.messages = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(String)
              ]))! as Map<String, String>;
          break;
        case 'categoryFilter':
          result.categoryFilter.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CategoryFilter))!
              as CategoryFilter);
          break;
        case 'availableCategories':
          result.availableCategories = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(String)]))
              as List<String>?;
          break;
        case 'unavailableCategories':
          result.unavailableCategories = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(String)]))
              as List<String>?;
          break;
        case 'filteredCategories':
          result.filteredCategories = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(String)]))
              as List<String>?;
          break;
        case 'channels':
          result.channels = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(String)]))
              as List<String>?;
          break;
        case 'showSectionContents':
          result.showSectionContents = serializers.deserialize(value,
                  specifiedType: const FullType(ShowSectionContents))
              as ShowSectionContents?;
          break;
        case 'hideSectionsNotForSale':
          result.hideSectionsNotForSale = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'showSeatLabels':
          result.showSeatLabels = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'session':
          result.session = serializers.deserialize(value,
              specifiedType: const FullType(Session)) as Session?;
          break;
        case 'holdToken':
          result.holdToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'holdOnSelectForGAs':
          result.holdOnSelectForGAs = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'showMinimap':
          result.showMinimap = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'showFullScreenButton':
          result.showFullScreenButton = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'showLegend':
          result.showLegend = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'legendConfig':
          result.legendConfig.replace(serializers.deserialize(value,
              specifiedType: const FullType(LegendConfig))! as LegendConfig);
          break;
        case 'showZoomOutButtonOnMobile':
          result.showZoomOutButtonOnMobile = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'colorScheme':
          result.colorScheme = serializers.deserialize(value,
                  specifiedType: const FullType(SeatsioColorScheme))
              as SeatsioColorScheme?;
          break;
        case 'colors':
          result.colors.replace(serializers.deserialize(value,
              specifiedType: const FullType(SeatsioColors))! as SeatsioColors);
          break;
        case 'activeFloor':
          result.activeFloor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lockActiveFloor':
          result.lockActiveFloor = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'showFloorElevator':
          result.showFloorElevator = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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
  final List<String>? selectableObjects;
  @override
  final List<SelectionValidator>? selectionValidators;
  @override
  final MaxSelectedObjects? maxSelectedObjects;
  @override
  final int? numberOfPlacesToSelect;
  @override
  final bool? multiSelectEnabled;
  @override
  final bool? objectsWithoutPricingSelectable;
  @override
  final ObjectPopover? objectPopover;
  @override
  final Function(SeatsioObject price)? popoverInfo;
  @override
  final bool? showActiveSectionTooltipOnMobile;
  @override
  final String? language;
  @override
  final Map<String, String> messages;
  @override
  final CategoryFilter? categoryFilter;
  @override
  final List<String>? availableCategories;
  @override
  final List<String>? unavailableCategories;
  @override
  final List<String>? filteredCategories;
  @override
  final List<String>? channels;
  @override
  final String? objectColor;
  @override
  final String? sectionColor;
  @override
  final String? objectLabel;
  @override
  final String? objectIcon;
  @override
  final ShowSectionContents? showSectionContents;
  @override
  final bool? hideSectionsNotForSale;
  @override
  final String? isObjectVisible;
  @override
  final bool? showSeatLabels;
  @override
  final Session? session;
  @override
  final String? holdToken;
  @override
  final bool? holdOnSelectForGAs;
  @override
  final bool? showMinimap;
  @override
  final bool? showFullScreenButton;
  @override
  final bool? showLegend;
  @override
  final LegendConfig? legendConfig;
  @override
  final bool? showZoomOutButtonOnMobile;
  @override
  final SeatsioColorScheme? colorScheme;
  @override
  final SeatsioColors? colors;
  @override
  final String? activeFloor;
  @override
  final bool? lockActiveFloor;
  @override
  final bool? showFloorElevator;
  @override
  final Function()? onChartRendered;
  @override
  final Function()? onChartRenderingFailed;
  @override
  final Function()? onChartRerenderingStarted;
  @override
  final Function(SeatsioObject object, SelectedTicketType? ticketType)?
      onObjectSelected;

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
      this.selectableObjects,
      this.selectionValidators,
      this.maxSelectedObjects,
      this.numberOfPlacesToSelect,
      this.multiSelectEnabled,
      this.objectsWithoutPricingSelectable,
      this.objectPopover,
      this.popoverInfo,
      this.showActiveSectionTooltipOnMobile,
      this.language,
      required this.messages,
      this.categoryFilter,
      this.availableCategories,
      this.unavailableCategories,
      this.filteredCategories,
      this.channels,
      this.objectColor,
      this.sectionColor,
      this.objectLabel,
      this.objectIcon,
      this.showSectionContents,
      this.hideSectionsNotForSale,
      this.isObjectVisible,
      this.showSeatLabels,
      this.session,
      this.holdToken,
      this.holdOnSelectForGAs,
      this.showMinimap,
      this.showFullScreenButton,
      this.showLegend,
      this.legendConfig,
      this.showZoomOutButtonOnMobile,
      this.colorScheme,
      this.colors,
      this.activeFloor,
      this.lockActiveFloor,
      this.showFloorElevator,
      this.onChartRendered,
      this.onChartRenderingFailed,
      this.onChartRerenderingStarted,
      this.onObjectSelected})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        workspaceKey, r'SeatingChartConfig', 'workspaceKey');
    BuiltValueNullFieldError.checkNotNull(
        region, r'SeatingChartConfig', 'region');
    BuiltValueNullFieldError.checkNotNull(
        messages, r'SeatingChartConfig', 'messages');
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
        selectableObjects == other.selectableObjects &&
        selectionValidators == other.selectionValidators &&
        maxSelectedObjects == other.maxSelectedObjects &&
        numberOfPlacesToSelect == other.numberOfPlacesToSelect &&
        multiSelectEnabled == other.multiSelectEnabled &&
        objectsWithoutPricingSelectable ==
            other.objectsWithoutPricingSelectable &&
        objectPopover == other.objectPopover &&
        popoverInfo == _$dynamicOther.popoverInfo &&
        showActiveSectionTooltipOnMobile ==
            other.showActiveSectionTooltipOnMobile &&
        language == other.language &&
        messages == other.messages &&
        categoryFilter == other.categoryFilter &&
        availableCategories == other.availableCategories &&
        unavailableCategories == other.unavailableCategories &&
        filteredCategories == other.filteredCategories &&
        channels == other.channels &&
        objectColor == other.objectColor &&
        sectionColor == other.sectionColor &&
        objectLabel == other.objectLabel &&
        objectIcon == other.objectIcon &&
        showSectionContents == other.showSectionContents &&
        hideSectionsNotForSale == other.hideSectionsNotForSale &&
        isObjectVisible == other.isObjectVisible &&
        showSeatLabels == other.showSeatLabels &&
        session == other.session &&
        holdToken == other.holdToken &&
        holdOnSelectForGAs == other.holdOnSelectForGAs &&
        showMinimap == other.showMinimap &&
        showFullScreenButton == other.showFullScreenButton &&
        showLegend == other.showLegend &&
        legendConfig == other.legendConfig &&
        showZoomOutButtonOnMobile == other.showZoomOutButtonOnMobile &&
        colorScheme == other.colorScheme &&
        colors == other.colors &&
        activeFloor == other.activeFloor &&
        lockActiveFloor == other.lockActiveFloor &&
        showFloorElevator == other.showFloorElevator &&
        onChartRendered == _$dynamicOther.onChartRendered &&
        onChartRenderingFailed == _$dynamicOther.onChartRenderingFailed &&
        onChartRerenderingStarted == _$dynamicOther.onChartRerenderingStarted &&
        onObjectSelected == _$dynamicOther.onObjectSelected;
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
    _$hash = $jc(_$hash, selectableObjects.hashCode);
    _$hash = $jc(_$hash, selectionValidators.hashCode);
    _$hash = $jc(_$hash, maxSelectedObjects.hashCode);
    _$hash = $jc(_$hash, numberOfPlacesToSelect.hashCode);
    _$hash = $jc(_$hash, multiSelectEnabled.hashCode);
    _$hash = $jc(_$hash, objectsWithoutPricingSelectable.hashCode);
    _$hash = $jc(_$hash, objectPopover.hashCode);
    _$hash = $jc(_$hash, popoverInfo.hashCode);
    _$hash = $jc(_$hash, showActiveSectionTooltipOnMobile.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, messages.hashCode);
    _$hash = $jc(_$hash, categoryFilter.hashCode);
    _$hash = $jc(_$hash, availableCategories.hashCode);
    _$hash = $jc(_$hash, unavailableCategories.hashCode);
    _$hash = $jc(_$hash, filteredCategories.hashCode);
    _$hash = $jc(_$hash, channels.hashCode);
    _$hash = $jc(_$hash, objectColor.hashCode);
    _$hash = $jc(_$hash, sectionColor.hashCode);
    _$hash = $jc(_$hash, objectLabel.hashCode);
    _$hash = $jc(_$hash, objectIcon.hashCode);
    _$hash = $jc(_$hash, showSectionContents.hashCode);
    _$hash = $jc(_$hash, hideSectionsNotForSale.hashCode);
    _$hash = $jc(_$hash, isObjectVisible.hashCode);
    _$hash = $jc(_$hash, showSeatLabels.hashCode);
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jc(_$hash, holdToken.hashCode);
    _$hash = $jc(_$hash, holdOnSelectForGAs.hashCode);
    _$hash = $jc(_$hash, showMinimap.hashCode);
    _$hash = $jc(_$hash, showFullScreenButton.hashCode);
    _$hash = $jc(_$hash, showLegend.hashCode);
    _$hash = $jc(_$hash, legendConfig.hashCode);
    _$hash = $jc(_$hash, showZoomOutButtonOnMobile.hashCode);
    _$hash = $jc(_$hash, colorScheme.hashCode);
    _$hash = $jc(_$hash, colors.hashCode);
    _$hash = $jc(_$hash, activeFloor.hashCode);
    _$hash = $jc(_$hash, lockActiveFloor.hashCode);
    _$hash = $jc(_$hash, showFloorElevator.hashCode);
    _$hash = $jc(_$hash, onChartRendered.hashCode);
    _$hash = $jc(_$hash, onChartRenderingFailed.hashCode);
    _$hash = $jc(_$hash, onChartRerenderingStarted.hashCode);
    _$hash = $jc(_$hash, onObjectSelected.hashCode);
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
          ..add('selectableObjects', selectableObjects)
          ..add('selectionValidators', selectionValidators)
          ..add('maxSelectedObjects', maxSelectedObjects)
          ..add('numberOfPlacesToSelect', numberOfPlacesToSelect)
          ..add('multiSelectEnabled', multiSelectEnabled)
          ..add('objectsWithoutPricingSelectable',
              objectsWithoutPricingSelectable)
          ..add('objectPopover', objectPopover)
          ..add('popoverInfo', popoverInfo)
          ..add('showActiveSectionTooltipOnMobile',
              showActiveSectionTooltipOnMobile)
          ..add('language', language)
          ..add('messages', messages)
          ..add('categoryFilter', categoryFilter)
          ..add('availableCategories', availableCategories)
          ..add('unavailableCategories', unavailableCategories)
          ..add('filteredCategories', filteredCategories)
          ..add('channels', channels)
          ..add('objectColor', objectColor)
          ..add('sectionColor', sectionColor)
          ..add('objectLabel', objectLabel)
          ..add('objectIcon', objectIcon)
          ..add('showSectionContents', showSectionContents)
          ..add('hideSectionsNotForSale', hideSectionsNotForSale)
          ..add('isObjectVisible', isObjectVisible)
          ..add('showSeatLabels', showSeatLabels)
          ..add('session', session)
          ..add('holdToken', holdToken)
          ..add('holdOnSelectForGAs', holdOnSelectForGAs)
          ..add('showMinimap', showMinimap)
          ..add('showFullScreenButton', showFullScreenButton)
          ..add('showLegend', showLegend)
          ..add('legendConfig', legendConfig)
          ..add('showZoomOutButtonOnMobile', showZoomOutButtonOnMobile)
          ..add('colorScheme', colorScheme)
          ..add('colors', colors)
          ..add('activeFloor', activeFloor)
          ..add('lockActiveFloor', lockActiveFloor)
          ..add('showFloorElevator', showFloorElevator)
          ..add('onChartRendered', onChartRendered)
          ..add('onChartRenderingFailed', onChartRenderingFailed)
          ..add('onChartRerenderingStarted', onChartRerenderingStarted)
          ..add('onObjectSelected', onObjectSelected))
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

  List<String>? _selectableObjects;
  List<String>? get selectableObjects => _$this._selectableObjects;
  set selectableObjects(List<String>? selectableObjects) =>
      _$this._selectableObjects = selectableObjects;

  List<SelectionValidator>? _selectionValidators;
  List<SelectionValidator>? get selectionValidators =>
      _$this._selectionValidators;
  set selectionValidators(List<SelectionValidator>? selectionValidators) =>
      _$this._selectionValidators = selectionValidators;

  MaxSelectedObjects? _maxSelectedObjects;
  MaxSelectedObjects? get maxSelectedObjects => _$this._maxSelectedObjects;
  set maxSelectedObjects(MaxSelectedObjects? maxSelectedObjects) =>
      _$this._maxSelectedObjects = maxSelectedObjects;

  int? _numberOfPlacesToSelect;
  int? get numberOfPlacesToSelect => _$this._numberOfPlacesToSelect;
  set numberOfPlacesToSelect(int? numberOfPlacesToSelect) =>
      _$this._numberOfPlacesToSelect = numberOfPlacesToSelect;

  bool? _multiSelectEnabled;
  bool? get multiSelectEnabled => _$this._multiSelectEnabled;
  set multiSelectEnabled(bool? multiSelectEnabled) =>
      _$this._multiSelectEnabled = multiSelectEnabled;

  bool? _objectsWithoutPricingSelectable;
  bool? get objectsWithoutPricingSelectable =>
      _$this._objectsWithoutPricingSelectable;
  set objectsWithoutPricingSelectable(bool? objectsWithoutPricingSelectable) =>
      _$this._objectsWithoutPricingSelectable = objectsWithoutPricingSelectable;

  ObjectPopoverBuilder? _objectPopover;
  ObjectPopoverBuilder get objectPopover =>
      _$this._objectPopover ??= new ObjectPopoverBuilder();
  set objectPopover(ObjectPopoverBuilder? objectPopover) =>
      _$this._objectPopover = objectPopover;

  Function(SeatsioObject price)? _popoverInfo;
  Function(SeatsioObject price)? get popoverInfo => _$this._popoverInfo;
  set popoverInfo(Function(SeatsioObject price)? popoverInfo) =>
      _$this._popoverInfo = popoverInfo;

  bool? _showActiveSectionTooltipOnMobile;
  bool? get showActiveSectionTooltipOnMobile =>
      _$this._showActiveSectionTooltipOnMobile;
  set showActiveSectionTooltipOnMobile(
          bool? showActiveSectionTooltipOnMobile) =>
      _$this._showActiveSectionTooltipOnMobile =
          showActiveSectionTooltipOnMobile;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  Map<String, String>? _messages;
  Map<String, String>? get messages => _$this._messages;
  set messages(Map<String, String>? messages) => _$this._messages = messages;

  CategoryFilterBuilder? _categoryFilter;
  CategoryFilterBuilder get categoryFilter =>
      _$this._categoryFilter ??= new CategoryFilterBuilder();
  set categoryFilter(CategoryFilterBuilder? categoryFilter) =>
      _$this._categoryFilter = categoryFilter;

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

  List<String>? _channels;
  List<String>? get channels => _$this._channels;
  set channels(List<String>? channels) => _$this._channels = channels;

  String? _objectColor;
  String? get objectColor => _$this._objectColor;
  set objectColor(String? objectColor) => _$this._objectColor = objectColor;

  String? _sectionColor;
  String? get sectionColor => _$this._sectionColor;
  set sectionColor(String? sectionColor) => _$this._sectionColor = sectionColor;

  String? _objectLabel;
  String? get objectLabel => _$this._objectLabel;
  set objectLabel(String? objectLabel) => _$this._objectLabel = objectLabel;

  String? _objectIcon;
  String? get objectIcon => _$this._objectIcon;
  set objectIcon(String? objectIcon) => _$this._objectIcon = objectIcon;

  ShowSectionContents? _showSectionContents;
  ShowSectionContents? get showSectionContents => _$this._showSectionContents;
  set showSectionContents(ShowSectionContents? showSectionContents) =>
      _$this._showSectionContents = showSectionContents;

  bool? _hideSectionsNotForSale;
  bool? get hideSectionsNotForSale => _$this._hideSectionsNotForSale;
  set hideSectionsNotForSale(bool? hideSectionsNotForSale) =>
      _$this._hideSectionsNotForSale = hideSectionsNotForSale;

  String? _isObjectVisible;
  String? get isObjectVisible => _$this._isObjectVisible;
  set isObjectVisible(String? isObjectVisible) =>
      _$this._isObjectVisible = isObjectVisible;

  bool? _showSeatLabels;
  bool? get showSeatLabels => _$this._showSeatLabels;
  set showSeatLabels(bool? showSeatLabels) =>
      _$this._showSeatLabels = showSeatLabels;

  Session? _session;
  Session? get session => _$this._session;
  set session(Session? session) => _$this._session = session;

  String? _holdToken;
  String? get holdToken => _$this._holdToken;
  set holdToken(String? holdToken) => _$this._holdToken = holdToken;

  bool? _holdOnSelectForGAs;
  bool? get holdOnSelectForGAs => _$this._holdOnSelectForGAs;
  set holdOnSelectForGAs(bool? holdOnSelectForGAs) =>
      _$this._holdOnSelectForGAs = holdOnSelectForGAs;

  bool? _showMinimap;
  bool? get showMinimap => _$this._showMinimap;
  set showMinimap(bool? showMinimap) => _$this._showMinimap = showMinimap;

  bool? _showFullScreenButton;
  bool? get showFullScreenButton => _$this._showFullScreenButton;
  set showFullScreenButton(bool? showFullScreenButton) =>
      _$this._showFullScreenButton = showFullScreenButton;

  bool? _showLegend;
  bool? get showLegend => _$this._showLegend;
  set showLegend(bool? showLegend) => _$this._showLegend = showLegend;

  LegendConfigBuilder? _legendConfig;
  LegendConfigBuilder get legendConfig =>
      _$this._legendConfig ??= new LegendConfigBuilder();
  set legendConfig(LegendConfigBuilder? legendConfig) =>
      _$this._legendConfig = legendConfig;

  bool? _showZoomOutButtonOnMobile;
  bool? get showZoomOutButtonOnMobile => _$this._showZoomOutButtonOnMobile;
  set showZoomOutButtonOnMobile(bool? showZoomOutButtonOnMobile) =>
      _$this._showZoomOutButtonOnMobile = showZoomOutButtonOnMobile;

  SeatsioColorScheme? _colorScheme;
  SeatsioColorScheme? get colorScheme => _$this._colorScheme;
  set colorScheme(SeatsioColorScheme? colorScheme) =>
      _$this._colorScheme = colorScheme;

  SeatsioColorsBuilder? _colors;
  SeatsioColorsBuilder get colors =>
      _$this._colors ??= new SeatsioColorsBuilder();
  set colors(SeatsioColorsBuilder? colors) => _$this._colors = colors;

  String? _activeFloor;
  String? get activeFloor => _$this._activeFloor;
  set activeFloor(String? activeFloor) => _$this._activeFloor = activeFloor;

  bool? _lockActiveFloor;
  bool? get lockActiveFloor => _$this._lockActiveFloor;
  set lockActiveFloor(bool? lockActiveFloor) =>
      _$this._lockActiveFloor = lockActiveFloor;

  bool? _showFloorElevator;
  bool? get showFloorElevator => _$this._showFloorElevator;
  set showFloorElevator(bool? showFloorElevator) =>
      _$this._showFloorElevator = showFloorElevator;

  Function()? _onChartRendered;
  Function()? get onChartRendered => _$this._onChartRendered;
  set onChartRendered(Function()? onChartRendered) =>
      _$this._onChartRendered = onChartRendered;

  Function()? _onChartRenderingFailed;
  Function()? get onChartRenderingFailed => _$this._onChartRenderingFailed;
  set onChartRenderingFailed(Function()? onChartRenderingFailed) =>
      _$this._onChartRenderingFailed = onChartRenderingFailed;

  Function()? _onChartRerenderingStarted;
  Function()? get onChartRerenderingStarted =>
      _$this._onChartRerenderingStarted;
  set onChartRerenderingStarted(Function()? onChartRerenderingStarted) =>
      _$this._onChartRerenderingStarted = onChartRerenderingStarted;

  Function(SeatsioObject object, SelectedTicketType? ticketType)?
      _onObjectSelected;
  Function(SeatsioObject object, SelectedTicketType? ticketType)?
      get onObjectSelected => _$this._onObjectSelected;
  set onObjectSelected(
          Function(SeatsioObject object, SelectedTicketType? ticketType)?
              onObjectSelected) =>
      _$this._onObjectSelected = onObjectSelected;

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
      _selectableObjects = $v.selectableObjects;
      _selectionValidators = $v.selectionValidators;
      _maxSelectedObjects = $v.maxSelectedObjects;
      _numberOfPlacesToSelect = $v.numberOfPlacesToSelect;
      _multiSelectEnabled = $v.multiSelectEnabled;
      _objectsWithoutPricingSelectable = $v.objectsWithoutPricingSelectable;
      _objectPopover = $v.objectPopover?.toBuilder();
      _popoverInfo = $v.popoverInfo;
      _showActiveSectionTooltipOnMobile = $v.showActiveSectionTooltipOnMobile;
      _language = $v.language;
      _messages = $v.messages;
      _categoryFilter = $v.categoryFilter?.toBuilder();
      _availableCategories = $v.availableCategories;
      _unavailableCategories = $v.unavailableCategories;
      _filteredCategories = $v.filteredCategories;
      _channels = $v.channels;
      _objectColor = $v.objectColor;
      _sectionColor = $v.sectionColor;
      _objectLabel = $v.objectLabel;
      _objectIcon = $v.objectIcon;
      _showSectionContents = $v.showSectionContents;
      _hideSectionsNotForSale = $v.hideSectionsNotForSale;
      _isObjectVisible = $v.isObjectVisible;
      _showSeatLabels = $v.showSeatLabels;
      _session = $v.session;
      _holdToken = $v.holdToken;
      _holdOnSelectForGAs = $v.holdOnSelectForGAs;
      _showMinimap = $v.showMinimap;
      _showFullScreenButton = $v.showFullScreenButton;
      _showLegend = $v.showLegend;
      _legendConfig = $v.legendConfig?.toBuilder();
      _showZoomOutButtonOnMobile = $v.showZoomOutButtonOnMobile;
      _colorScheme = $v.colorScheme;
      _colors = $v.colors?.toBuilder();
      _activeFloor = $v.activeFloor;
      _lockActiveFloor = $v.lockActiveFloor;
      _showFloorElevator = $v.showFloorElevator;
      _onChartRendered = $v.onChartRendered;
      _onChartRenderingFailed = $v.onChartRenderingFailed;
      _onChartRerenderingStarted = $v.onChartRerenderingStarted;
      _onObjectSelected = $v.onObjectSelected;
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
            region: BuiltValueNullFieldError.checkNotNull(
                region, r'SeatingChartConfig', 'region'),
            event: event,
            events: events,
            mode: mode,
            pricing: pricing,
            priceFormatter: priceFormatter,
            showSectionPricingOverlay: showSectionPricingOverlay,
            selectedObjects: selectedObjects,
            selectableObjects: selectableObjects,
            selectionValidators: selectionValidators,
            maxSelectedObjects: maxSelectedObjects,
            numberOfPlacesToSelect: numberOfPlacesToSelect,
            multiSelectEnabled: multiSelectEnabled,
            objectsWithoutPricingSelectable: objectsWithoutPricingSelectable,
            objectPopover: _objectPopover?.build(),
            popoverInfo: popoverInfo,
            showActiveSectionTooltipOnMobile: showActiveSectionTooltipOnMobile,
            language: language,
            messages: BuiltValueNullFieldError.checkNotNull(
                messages, r'SeatingChartConfig', 'messages'),
            categoryFilter: _categoryFilter?.build(),
            availableCategories: availableCategories,
            unavailableCategories: unavailableCategories,
            filteredCategories: filteredCategories,
            channels: channels,
            objectColor: objectColor,
            sectionColor: sectionColor,
            objectLabel: objectLabel,
            objectIcon: objectIcon,
            showSectionContents: showSectionContents,
            hideSectionsNotForSale: hideSectionsNotForSale,
            isObjectVisible: isObjectVisible,
            showSeatLabels: showSeatLabels,
            session: session,
            holdToken: holdToken,
            holdOnSelectForGAs: holdOnSelectForGAs,
            showMinimap: showMinimap,
            showFullScreenButton: showFullScreenButton,
            showLegend: showLegend,
            legendConfig: _legendConfig?.build(),
            showZoomOutButtonOnMobile: showZoomOutButtonOnMobile,
            colorScheme: colorScheme,
            colors: _colors?.build(),
            activeFloor: activeFloor,
            lockActiveFloor: lockActiveFloor,
            showFloorElevator: showFloorElevator,
            onChartRendered: onChartRendered,
            onChartRenderingFailed: onChartRenderingFailed,
            onChartRerenderingStarted: onChartRerenderingStarted,
            onObjectSelected: onObjectSelected,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'objectPopover';
        _objectPopover?.build();

        _$failedField = 'categoryFilter';
        _categoryFilter?.build();

        _$failedField = 'legendConfig';
        _legendConfig?.build();

        _$failedField = 'colors';
        _colors?.build();
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
