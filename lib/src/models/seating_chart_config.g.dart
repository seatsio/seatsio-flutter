// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seating_chart_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SeatingChartConfig> _$seatingChartConfigSerializer =
    new _$SeatingChartConfigSerializer();
Serializer<SelectedObject> _$selectedObjectSerializer =
    new _$SelectedObjectSerializer();
Serializer<ObjectTooltip> _$objectTooltipSerializer =
    new _$ObjectTooltipSerializer();
Serializer<LegendForCategory> _$legendForCategorySerializer =
    new _$LegendForCategorySerializer();
Serializer<BestAvailable> _$bestAvailableSerializer =
    new _$BestAvailableSerializer();
Serializer<SelectionValidator> _$selectionValidatorSerializer =
    new _$SelectionValidatorSerializer();

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
      'event',
      serializers.serialize(object.event,
          specifiedType: const FullType(String)),
      'region',
      serializers.serialize(object.region,
          specifiedType: const FullType(SeatsioRegion)),
      'enableChartRenderedCallback',
      serializers.serialize(object.enableChartRenderedCallback,
          specifiedType: const FullType(bool)),
      'enableChartRenderingFailedCallback',
      serializers.serialize(object.enableChartRenderingFailedCallback,
          specifiedType: const FullType(bool)),
      'enableObjectClickedCallback',
      serializers.serialize(object.enableObjectClickedCallback,
          specifiedType: const FullType(bool)),
      'enableObjectSelectedCallback',
      serializers.serialize(object.enableObjectSelectedCallback,
          specifiedType: const FullType(bool)),
      'enableObjectDeselectedCallback',
      serializers.serialize(object.enableObjectDeselectedCallback,
          specifiedType: const FullType(bool)),
      'enableSelectionValidCallback',
      serializers.serialize(object.enableSelectionValidCallback,
          specifiedType: const FullType(bool)),
      'enableSelectionInvalidCallback',
      serializers.serialize(object.enableSelectionInvalidCallback,
          specifiedType: const FullType(bool)),
      'enableBestAvailableSelectedCallback',
      serializers.serialize(object.enableBestAvailableSelectedCallback,
          specifiedType: const FullType(bool)),
      'enableBestAvailableSelectionFailedCallback',
      serializers.serialize(object.enableBestAvailableSelectionFailedCallback,
          specifiedType: const FullType(bool)),
      'enableHoldSucceededCallback',
      serializers.serialize(object.enableHoldSucceededCallback,
          specifiedType: const FullType(bool)),
      'enableHoldFailedCallback',
      serializers.serialize(object.enableHoldFailedCallback,
          specifiedType: const FullType(bool)),
      'enableHoldTokenExpiredCallback',
      serializers.serialize(object.enableHoldTokenExpiredCallback,
          specifiedType: const FullType(bool)),
      'enableSessionInitializedCallback',
      serializers.serialize(object.enableSessionInitializedCallback,
          specifiedType: const FullType(bool)),
      'enableReleaseHoldSucceededCallback',
      serializers.serialize(object.enableReleaseHoldSucceededCallback,
          specifiedType: const FullType(bool)),
      'enableReleaseHoldFailedCallback',
      serializers.serialize(object.enableReleaseHoldFailedCallback,
          specifiedType: const FullType(bool)),
      'enableSelectedObjectBookedCallback',
      serializers.serialize(object.enableSelectedObjectBookedCallback,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.language;
    if (value != null) {
      result
        ..add('language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.messages;
    if (value != null) {
      result
        ..add('messages')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(String)])));
    }
    value = object.pricing;
    if (value != null) {
      result
        ..add('pricing')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PricingForCategory)])));
    }
    value = object.numberOfPlacesToSelect;
    if (value != null) {
      result
        ..add('numberOfPlacesToSelect')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.objectWithoutPricingSelectable;
    if (value != null) {
      result
        ..add('objectWithoutPricingSelectable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.selectedObjects;
    if (value != null) {
      result
        ..add('selectedObjects')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SelectedObject)])));
    }
    value = object.objectTooltip;
    if (value != null) {
      result
        ..add('objectTooltip')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ObjectTooltip)));
    }
    value = object.priceLevelsTooltipMessage;
    if (value != null) {
      result
        ..add('priceLevelsTooltipMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.maxSelectedObjects;
    if (value != null) {
      result
        ..add('maxSelectedObjects')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.maxSelectedObjectList;
    if (value != null) {
      result
        ..add('maxSelectedObjectList')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(List, const [
              const FullType(
                  Map, const [const FullType(String), const FullType(dynamic)])
            ])));
    }
    value = object.availableCategories;
    if (value != null) {
      result
        ..add('availableCategories')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.unavailableCategories;
    if (value != null) {
      result
        ..add('unavailableCategories')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.alwaysShowSectionContents;
    if (value != null) {
      result
        ..add('alwaysShowSectionContents')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.showSectionContents;
    if (value != null) {
      result
        ..add('showSectionContents')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.showLegend;
    if (value != null) {
      result
        ..add('showLegend')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.legend;
    if (value != null) {
      result
        ..add('legend')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LegendForCategory)));
    }
    value = object.showMinimap;
    if (value != null) {
      result
        ..add('showMinimap')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.inputDevice;
    if (value != null) {
      result
        ..add('inputDevice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.showActiveSectionTooltipOnMobile;
    if (value != null) {
      result
        ..add('showActiveSectionTooltipOnMobile')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.selectionValidators;
    if (value != null) {
      result
        ..add('selectionValidators')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SelectionValidator)])));
    }
    value = object.mode;
    if (value != null) {
      result
        ..add('mode')
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
    value = object.holdToken;
    if (value != null) {
      result
        ..add('holdToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.session;
    if (value != null) {
      result
        ..add('session')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.objectLabel;
    if (value != null) {
      result
        ..add('objectLabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.objectIcon;
    if (value != null) {
      result
        ..add('objectIcon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isObjectVisible;
    if (value != null) {
      result
        ..add('isObjectVisible')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isObjectSelectable;
    if (value != null) {
      result
        ..add('isObjectSelectable')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.objectColor;
    if (value != null) {
      result
        ..add('objectColor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sectionColor;
    if (value != null) {
      result
        ..add('sectionColor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.extraConfig;
    if (value != null) {
      result
        ..add('extraConfig')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(String)])));
    }
    value = object.showFullScreenButton;
    if (value != null) {
      result
        ..add('showFullScreenButton')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.channels;
    if (value != null) {
      result
        ..add('channels')
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
              specifiedType: const FullType(String))! as String;
          break;
        case 'region':
          result.region = serializers.deserialize(value,
              specifiedType: const FullType(SeatsioRegion))! as SeatsioRegion;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'messages':
          result.messages.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(String)]))!);
          break;
        case 'pricing':
          result.pricing.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PricingForCategory)]))!
              as BuiltList<Object?>);
          break;
        case 'numberOfPlacesToSelect':
          result.numberOfPlacesToSelect = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'objectWithoutPricingSelectable':
          result.objectWithoutPricingSelectable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'selectedObjects':
          result.selectedObjects.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SelectedObject)]))!
              as BuiltList<Object?>);
          break;
        case 'objectTooltip':
          result.objectTooltip.replace(serializers.deserialize(value,
              specifiedType: const FullType(ObjectTooltip))! as ObjectTooltip);
          break;
        case 'priceLevelsTooltipMessage':
          result.priceLevelsTooltipMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'maxSelectedObjects':
          result.maxSelectedObjects = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'maxSelectedObjectList':
          result.maxSelectedObjectList = serializers.deserialize(value,
              specifiedType: const FullType(List, const [
                const FullType(Map,
                    const [const FullType(String), const FullType(dynamic)])
              ])) as List<Map<String, dynamic>>?;
          break;
        case 'availableCategories':
          result.availableCategories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'unavailableCategories':
          result.unavailableCategories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'alwaysShowSectionContents':
          result.alwaysShowSectionContents = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'showSectionContents':
          result.showSectionContents = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'showLegend':
          result.showLegend = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'legend':
          result.legend.replace(serializers.deserialize(value,
                  specifiedType: const FullType(LegendForCategory))!
              as LegendForCategory);
          break;
        case 'showMinimap':
          result.showMinimap = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'inputDevice':
          result.inputDevice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'showActiveSectionTooltipOnMobile':
          result.showActiveSectionTooltipOnMobile = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool?;
          break;
        case 'selectionValidators':
          result.selectionValidators.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SelectionValidator)]))!
              as BuiltList<Object?>);
          break;
        case 'mode':
          result.mode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'holdOnSelectForGAs':
          result.holdOnSelectForGAs = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'holdToken':
          result.holdToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'session':
          result.session = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'objectLabel':
          result.objectLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'objectIcon':
          result.objectIcon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isObjectVisible':
          result.isObjectVisible = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isObjectSelectable':
          result.isObjectSelectable = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'objectColor':
          result.objectColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sectionColor':
          result.sectionColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'extraConfig':
          result.extraConfig.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(String)]))!);
          break;
        case 'showFullScreenButton':
          result.showFullScreenButton = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'channels':
          result.channels.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'enableChartRenderedCallback':
          result.enableChartRenderedCallback = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'enableChartRenderingFailedCallback':
          result.enableChartRenderingFailedCallback = serializers
              .deserialize(value, specifiedType: const FullType(bool))! as bool;
          break;
        case 'enableObjectClickedCallback':
          result.enableObjectClickedCallback = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'enableObjectSelectedCallback':
          result.enableObjectSelectedCallback = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'enableObjectDeselectedCallback':
          result.enableObjectDeselectedCallback = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'enableSelectionValidCallback':
          result.enableSelectionValidCallback = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'enableSelectionInvalidCallback':
          result.enableSelectionInvalidCallback = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'enableBestAvailableSelectedCallback':
          result.enableBestAvailableSelectedCallback = serializers
              .deserialize(value, specifiedType: const FullType(bool))! as bool;
          break;
        case 'enableBestAvailableSelectionFailedCallback':
          result.enableBestAvailableSelectionFailedCallback = serializers
              .deserialize(value, specifiedType: const FullType(bool))! as bool;
          break;
        case 'enableHoldSucceededCallback':
          result.enableHoldSucceededCallback = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'enableHoldFailedCallback':
          result.enableHoldFailedCallback = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'enableHoldTokenExpiredCallback':
          result.enableHoldTokenExpiredCallback = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'enableSessionInitializedCallback':
          result.enableSessionInitializedCallback = serializers
              .deserialize(value, specifiedType: const FullType(bool))! as bool;
          break;
        case 'enableReleaseHoldSucceededCallback':
          result.enableReleaseHoldSucceededCallback = serializers
              .deserialize(value, specifiedType: const FullType(bool))! as bool;
          break;
        case 'enableReleaseHoldFailedCallback':
          result.enableReleaseHoldFailedCallback = serializers
              .deserialize(value, specifiedType: const FullType(bool))! as bool;
          break;
        case 'enableSelectedObjectBookedCallback':
          result.enableSelectedObjectBookedCallback = serializers
              .deserialize(value, specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$SelectedObjectSerializer
    implements StructuredSerializer<SelectedObject> {
  @override
  final Iterable<Type> types = const [SelectedObject, _$SelectedObject];
  @override
  final String wireName = 'SelectedObject';

  @override
  Iterable<Object?> serialize(Serializers serializers, SelectedObject object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.ticketType;
    if (value != null) {
      result
        ..add('ticketType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  SelectedObject deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SelectedObjectBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'ticketType':
          result.ticketType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$ObjectTooltipSerializer implements StructuredSerializer<ObjectTooltip> {
  @override
  final Iterable<Type> types = const [ObjectTooltip, _$ObjectTooltip];
  @override
  final String wireName = 'ObjectTooltip';

  @override
  Iterable<Object?> serialize(Serializers serializers, ObjectTooltip object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'showActionHint',
      serializers.serialize(object.showActionHint,
          specifiedType: const FullType(bool)),
      'showAvailability',
      serializers.serialize(object.showAvailability,
          specifiedType: const FullType(bool)),
      'showCategory',
      serializers.serialize(object.showCategory,
          specifiedType: const FullType(bool)),
      'showLabel',
      serializers.serialize(object.showLabel,
          specifiedType: const FullType(bool)),
      'showPricing',
      serializers.serialize(object.showPricing,
          specifiedType: const FullType(bool)),
      'showUnavailableNotice',
      serializers.serialize(object.showUnavailableNotice,
          specifiedType: const FullType(bool)),
      'stylizedLabel',
      serializers.serialize(object.stylizedLabel,
          specifiedType: const FullType(bool)),
      'confirmSelectionOnMobile',
      serializers.serialize(object.confirmSelectionOnMobile,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  ObjectTooltip deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ObjectTooltipBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'showActionHint':
          result.showActionHint = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'showAvailability':
          result.showAvailability = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'showCategory':
          result.showCategory = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'showLabel':
          result.showLabel = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'showPricing':
          result.showPricing = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'showUnavailableNotice':
          result.showUnavailableNotice = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'stylizedLabel':
          result.stylizedLabel = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'confirmSelectionOnMobile':
          result.confirmSelectionOnMobile = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$LegendForCategorySerializer
    implements StructuredSerializer<LegendForCategory> {
  @override
  final Iterable<Type> types = const [LegendForCategory, _$LegendForCategory];
  @override
  final String wireName = 'LegendForCategory';

  @override
  Iterable<Object?> serialize(Serializers serializers, LegendForCategory object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'hideNonSelectableCategories',
      serializers.serialize(object.hideNonSelectableCategories,
          specifiedType: const FullType(bool)),
      'hidePricing',
      serializers.serialize(object.hidePricing,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  LegendForCategory deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LegendForCategoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'hideNonSelectableCategories':
          result.hideNonSelectableCategories = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'hidePricing':
          result.hidePricing = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$BestAvailableSerializer implements StructuredSerializer<BestAvailable> {
  @override
  final Iterable<Type> types = const [BestAvailable, _$BestAvailable];
  @override
  final String wireName = 'BestAvailable';

  @override
  Iterable<Object?> serialize(Serializers serializers, BestAvailable object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'number',
      serializers.serialize(object.number, specifiedType: const FullType(int)),
      'category',
      serializers.serialize(object.category,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'ticketTypes',
      serializers.serialize(object.ticketTypes,
          specifiedType: const FullType(TicketTypePricing)),
      'clearSelection',
      serializers.serialize(object.clearSelection,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  BestAvailable deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BestAvailableBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'category':
          result.category.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'ticketTypes':
          result.ticketTypes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TicketTypePricing))!
              as TicketTypePricing);
          break;
        case 'clearSelection':
          result.clearSelection = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$SelectionValidatorSerializer
    implements StructuredSerializer<SelectionValidator> {
  @override
  final Iterable<Type> types = const [SelectionValidator, _$SelectionValidator];
  @override
  final String wireName = 'SelectionValidator';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SelectionValidator object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SelectionValidator deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SelectionValidatorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
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
  final String event;
  @override
  final SeatsioRegion region;
  @override
  final String? language;
  @override
  final BuiltMap<String, String>? messages;
  @override
  final BuiltList<PricingForCategory>? pricing;
  @override
  final Function(num price)? priceFormatter;
  @override
  final int? numberOfPlacesToSelect;
  @override
  final bool? objectWithoutPricingSelectable;
  @override
  final BuiltList<SelectedObject>? selectedObjects;
  @override
  final ObjectTooltip? objectTooltip;
  @override
  final String? priceLevelsTooltipMessage;
  @override
  final int? maxSelectedObjects;
  @override
  final List<Map<String, dynamic>>? maxSelectedObjectList;
  @override
  final BuiltList<String>? availableCategories;
  @override
  final BuiltList<String>? unavailableCategories;
  @override
  final bool? alwaysShowSectionContents;
  @override
  final String? showSectionContents;
  @override
  final bool? showLegend;
  @override
  final LegendForCategory? legend;
  @override
  final bool? showMinimap;
  @override
  final String? inputDevice;
  @override
  final bool? showActiveSectionTooltipOnMobile;
  @override
  final BuiltList<SelectionValidator>? selectionValidators;
  @override
  final String? mode;
  @override
  final bool? holdOnSelectForGAs;
  @override
  final String? holdToken;
  @override
  final String? session;
  @override
  final String? objectLabel;
  @override
  final String? objectIcon;
  @override
  final String? isObjectVisible;
  @override
  final String? isObjectSelectable;
  @override
  final String? objectColor;
  @override
  final String? sectionColor;
  @override
  final BuiltMap<String, String>? extraConfig;
  @override
  final bool? showFullScreenButton;
  @override
  final BuiltList<String>? channels;
  @override
  final bool enableChartRenderedCallback;
  @override
  final bool enableChartRenderingFailedCallback;
  @override
  final bool enableObjectClickedCallback;
  @override
  final bool enableObjectSelectedCallback;
  @override
  final bool enableObjectDeselectedCallback;
  @override
  final bool enableSelectionValidCallback;
  @override
  final bool enableSelectionInvalidCallback;
  @override
  final bool enableBestAvailableSelectedCallback;
  @override
  final bool enableBestAvailableSelectionFailedCallback;
  @override
  final bool enableHoldSucceededCallback;
  @override
  final bool enableHoldFailedCallback;
  @override
  final bool enableHoldTokenExpiredCallback;
  @override
  final bool enableSessionInitializedCallback;
  @override
  final bool enableReleaseHoldSucceededCallback;
  @override
  final bool enableReleaseHoldFailedCallback;
  @override
  final bool enableSelectedObjectBookedCallback;

  factory _$SeatingChartConfig(
          [void Function(SeatingChartConfigBuilder)? updates]) =>
      (new SeatingChartConfigBuilder()..update(updates))._build();

  _$SeatingChartConfig._(
      {required this.workspaceKey,
      required this.event,
      required this.region,
      this.language,
      this.messages,
      this.pricing,
      this.priceFormatter,
      this.numberOfPlacesToSelect,
      this.objectWithoutPricingSelectable,
      this.selectedObjects,
      this.objectTooltip,
      this.priceLevelsTooltipMessage,
      this.maxSelectedObjects,
      this.maxSelectedObjectList,
      this.availableCategories,
      this.unavailableCategories,
      this.alwaysShowSectionContents,
      this.showSectionContents,
      this.showLegend,
      this.legend,
      this.showMinimap,
      this.inputDevice,
      this.showActiveSectionTooltipOnMobile,
      this.selectionValidators,
      this.mode,
      this.holdOnSelectForGAs,
      this.holdToken,
      this.session,
      this.objectLabel,
      this.objectIcon,
      this.isObjectVisible,
      this.isObjectSelectable,
      this.objectColor,
      this.sectionColor,
      this.extraConfig,
      this.showFullScreenButton,
      this.channels,
      required this.enableChartRenderedCallback,
      required this.enableChartRenderingFailedCallback,
      required this.enableObjectClickedCallback,
      required this.enableObjectSelectedCallback,
      required this.enableObjectDeselectedCallback,
      required this.enableSelectionValidCallback,
      required this.enableSelectionInvalidCallback,
      required this.enableBestAvailableSelectedCallback,
      required this.enableBestAvailableSelectionFailedCallback,
      required this.enableHoldSucceededCallback,
      required this.enableHoldFailedCallback,
      required this.enableHoldTokenExpiredCallback,
      required this.enableSessionInitializedCallback,
      required this.enableReleaseHoldSucceededCallback,
      required this.enableReleaseHoldFailedCallback,
      required this.enableSelectedObjectBookedCallback})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        workspaceKey, r'SeatingChartConfig', 'workspaceKey');
    BuiltValueNullFieldError.checkNotNull(
        event, r'SeatingChartConfig', 'event');
    BuiltValueNullFieldError.checkNotNull(
        region, r'SeatingChartConfig', 'region');
    BuiltValueNullFieldError.checkNotNull(enableChartRenderedCallback,
        r'SeatingChartConfig', 'enableChartRenderedCallback');
    BuiltValueNullFieldError.checkNotNull(enableChartRenderingFailedCallback,
        r'SeatingChartConfig', 'enableChartRenderingFailedCallback');
    BuiltValueNullFieldError.checkNotNull(enableObjectClickedCallback,
        r'SeatingChartConfig', 'enableObjectClickedCallback');
    BuiltValueNullFieldError.checkNotNull(enableObjectSelectedCallback,
        r'SeatingChartConfig', 'enableObjectSelectedCallback');
    BuiltValueNullFieldError.checkNotNull(enableObjectDeselectedCallback,
        r'SeatingChartConfig', 'enableObjectDeselectedCallback');
    BuiltValueNullFieldError.checkNotNull(enableSelectionValidCallback,
        r'SeatingChartConfig', 'enableSelectionValidCallback');
    BuiltValueNullFieldError.checkNotNull(enableSelectionInvalidCallback,
        r'SeatingChartConfig', 'enableSelectionInvalidCallback');
    BuiltValueNullFieldError.checkNotNull(enableBestAvailableSelectedCallback,
        r'SeatingChartConfig', 'enableBestAvailableSelectedCallback');
    BuiltValueNullFieldError.checkNotNull(
        enableBestAvailableSelectionFailedCallback,
        r'SeatingChartConfig',
        'enableBestAvailableSelectionFailedCallback');
    BuiltValueNullFieldError.checkNotNull(enableHoldSucceededCallback,
        r'SeatingChartConfig', 'enableHoldSucceededCallback');
    BuiltValueNullFieldError.checkNotNull(enableHoldFailedCallback,
        r'SeatingChartConfig', 'enableHoldFailedCallback');
    BuiltValueNullFieldError.checkNotNull(enableHoldTokenExpiredCallback,
        r'SeatingChartConfig', 'enableHoldTokenExpiredCallback');
    BuiltValueNullFieldError.checkNotNull(enableSessionInitializedCallback,
        r'SeatingChartConfig', 'enableSessionInitializedCallback');
    BuiltValueNullFieldError.checkNotNull(enableReleaseHoldSucceededCallback,
        r'SeatingChartConfig', 'enableReleaseHoldSucceededCallback');
    BuiltValueNullFieldError.checkNotNull(enableReleaseHoldFailedCallback,
        r'SeatingChartConfig', 'enableReleaseHoldFailedCallback');
    BuiltValueNullFieldError.checkNotNull(enableSelectedObjectBookedCallback,
        r'SeatingChartConfig', 'enableSelectedObjectBookedCallback');
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
        event == other.event &&
        region == other.region &&
        language == other.language &&
        messages == other.messages &&
        pricing == other.pricing &&
        priceFormatter == _$dynamicOther.priceFormatter &&
        numberOfPlacesToSelect == other.numberOfPlacesToSelect &&
        objectWithoutPricingSelectable ==
            other.objectWithoutPricingSelectable &&
        selectedObjects == other.selectedObjects &&
        objectTooltip == other.objectTooltip &&
        priceLevelsTooltipMessage == other.priceLevelsTooltipMessage &&
        maxSelectedObjects == other.maxSelectedObjects &&
        maxSelectedObjectList == other.maxSelectedObjectList &&
        availableCategories == other.availableCategories &&
        unavailableCategories == other.unavailableCategories &&
        alwaysShowSectionContents == other.alwaysShowSectionContents &&
        showSectionContents == other.showSectionContents &&
        showLegend == other.showLegend &&
        legend == other.legend &&
        showMinimap == other.showMinimap &&
        inputDevice == other.inputDevice &&
        showActiveSectionTooltipOnMobile ==
            other.showActiveSectionTooltipOnMobile &&
        selectionValidators == other.selectionValidators &&
        mode == other.mode &&
        holdOnSelectForGAs == other.holdOnSelectForGAs &&
        holdToken == other.holdToken &&
        session == other.session &&
        objectLabel == other.objectLabel &&
        objectIcon == other.objectIcon &&
        isObjectVisible == other.isObjectVisible &&
        isObjectSelectable == other.isObjectSelectable &&
        objectColor == other.objectColor &&
        sectionColor == other.sectionColor &&
        extraConfig == other.extraConfig &&
        showFullScreenButton == other.showFullScreenButton &&
        channels == other.channels &&
        enableChartRenderedCallback == other.enableChartRenderedCallback &&
        enableChartRenderingFailedCallback ==
            other.enableChartRenderingFailedCallback &&
        enableObjectClickedCallback == other.enableObjectClickedCallback &&
        enableObjectSelectedCallback == other.enableObjectSelectedCallback &&
        enableObjectDeselectedCallback ==
            other.enableObjectDeselectedCallback &&
        enableSelectionValidCallback == other.enableSelectionValidCallback &&
        enableSelectionInvalidCallback ==
            other.enableSelectionInvalidCallback &&
        enableBestAvailableSelectedCallback ==
            other.enableBestAvailableSelectedCallback &&
        enableBestAvailableSelectionFailedCallback ==
            other.enableBestAvailableSelectionFailedCallback &&
        enableHoldSucceededCallback == other.enableHoldSucceededCallback &&
        enableHoldFailedCallback == other.enableHoldFailedCallback &&
        enableHoldTokenExpiredCallback ==
            other.enableHoldTokenExpiredCallback &&
        enableSessionInitializedCallback ==
            other.enableSessionInitializedCallback &&
        enableReleaseHoldSucceededCallback ==
            other.enableReleaseHoldSucceededCallback &&
        enableReleaseHoldFailedCallback ==
            other.enableReleaseHoldFailedCallback &&
        enableSelectedObjectBookedCallback ==
            other.enableSelectedObjectBookedCallback;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, workspaceKey.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, messages.hashCode);
    _$hash = $jc(_$hash, pricing.hashCode);
    _$hash = $jc(_$hash, priceFormatter.hashCode);
    _$hash = $jc(_$hash, numberOfPlacesToSelect.hashCode);
    _$hash = $jc(_$hash, objectWithoutPricingSelectable.hashCode);
    _$hash = $jc(_$hash, selectedObjects.hashCode);
    _$hash = $jc(_$hash, objectTooltip.hashCode);
    _$hash = $jc(_$hash, priceLevelsTooltipMessage.hashCode);
    _$hash = $jc(_$hash, maxSelectedObjects.hashCode);
    _$hash = $jc(_$hash, maxSelectedObjectList.hashCode);
    _$hash = $jc(_$hash, availableCategories.hashCode);
    _$hash = $jc(_$hash, unavailableCategories.hashCode);
    _$hash = $jc(_$hash, alwaysShowSectionContents.hashCode);
    _$hash = $jc(_$hash, showSectionContents.hashCode);
    _$hash = $jc(_$hash, showLegend.hashCode);
    _$hash = $jc(_$hash, legend.hashCode);
    _$hash = $jc(_$hash, showMinimap.hashCode);
    _$hash = $jc(_$hash, inputDevice.hashCode);
    _$hash = $jc(_$hash, showActiveSectionTooltipOnMobile.hashCode);
    _$hash = $jc(_$hash, selectionValidators.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, holdOnSelectForGAs.hashCode);
    _$hash = $jc(_$hash, holdToken.hashCode);
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jc(_$hash, objectLabel.hashCode);
    _$hash = $jc(_$hash, objectIcon.hashCode);
    _$hash = $jc(_$hash, isObjectVisible.hashCode);
    _$hash = $jc(_$hash, isObjectSelectable.hashCode);
    _$hash = $jc(_$hash, objectColor.hashCode);
    _$hash = $jc(_$hash, sectionColor.hashCode);
    _$hash = $jc(_$hash, extraConfig.hashCode);
    _$hash = $jc(_$hash, showFullScreenButton.hashCode);
    _$hash = $jc(_$hash, channels.hashCode);
    _$hash = $jc(_$hash, enableChartRenderedCallback.hashCode);
    _$hash = $jc(_$hash, enableChartRenderingFailedCallback.hashCode);
    _$hash = $jc(_$hash, enableObjectClickedCallback.hashCode);
    _$hash = $jc(_$hash, enableObjectSelectedCallback.hashCode);
    _$hash = $jc(_$hash, enableObjectDeselectedCallback.hashCode);
    _$hash = $jc(_$hash, enableSelectionValidCallback.hashCode);
    _$hash = $jc(_$hash, enableSelectionInvalidCallback.hashCode);
    _$hash = $jc(_$hash, enableBestAvailableSelectedCallback.hashCode);
    _$hash = $jc(_$hash, enableBestAvailableSelectionFailedCallback.hashCode);
    _$hash = $jc(_$hash, enableHoldSucceededCallback.hashCode);
    _$hash = $jc(_$hash, enableHoldFailedCallback.hashCode);
    _$hash = $jc(_$hash, enableHoldTokenExpiredCallback.hashCode);
    _$hash = $jc(_$hash, enableSessionInitializedCallback.hashCode);
    _$hash = $jc(_$hash, enableReleaseHoldSucceededCallback.hashCode);
    _$hash = $jc(_$hash, enableReleaseHoldFailedCallback.hashCode);
    _$hash = $jc(_$hash, enableSelectedObjectBookedCallback.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeatingChartConfig')
          ..add('workspaceKey', workspaceKey)
          ..add('event', event)
          ..add('region', region)
          ..add('language', language)
          ..add('messages', messages)
          ..add('pricing', pricing)
          ..add('priceFormatter', priceFormatter)
          ..add('numberOfPlacesToSelect', numberOfPlacesToSelect)
          ..add(
              'objectWithoutPricingSelectable', objectWithoutPricingSelectable)
          ..add('selectedObjects', selectedObjects)
          ..add('objectTooltip', objectTooltip)
          ..add('priceLevelsTooltipMessage', priceLevelsTooltipMessage)
          ..add('maxSelectedObjects', maxSelectedObjects)
          ..add('maxSelectedObjectList', maxSelectedObjectList)
          ..add('availableCategories', availableCategories)
          ..add('unavailableCategories', unavailableCategories)
          ..add('alwaysShowSectionContents', alwaysShowSectionContents)
          ..add('showSectionContents', showSectionContents)
          ..add('showLegend', showLegend)
          ..add('legend', legend)
          ..add('showMinimap', showMinimap)
          ..add('inputDevice', inputDevice)
          ..add('showActiveSectionTooltipOnMobile',
              showActiveSectionTooltipOnMobile)
          ..add('selectionValidators', selectionValidators)
          ..add('mode', mode)
          ..add('holdOnSelectForGAs', holdOnSelectForGAs)
          ..add('holdToken', holdToken)
          ..add('session', session)
          ..add('objectLabel', objectLabel)
          ..add('objectIcon', objectIcon)
          ..add('isObjectVisible', isObjectVisible)
          ..add('isObjectSelectable', isObjectSelectable)
          ..add('objectColor', objectColor)
          ..add('sectionColor', sectionColor)
          ..add('extraConfig', extraConfig)
          ..add('showFullScreenButton', showFullScreenButton)
          ..add('channels', channels)
          ..add('enableChartRenderedCallback', enableChartRenderedCallback)
          ..add('enableChartRenderingFailedCallback',
              enableChartRenderingFailedCallback)
          ..add('enableObjectClickedCallback', enableObjectClickedCallback)
          ..add('enableObjectSelectedCallback', enableObjectSelectedCallback)
          ..add(
              'enableObjectDeselectedCallback', enableObjectDeselectedCallback)
          ..add('enableSelectionValidCallback', enableSelectionValidCallback)
          ..add(
              'enableSelectionInvalidCallback', enableSelectionInvalidCallback)
          ..add('enableBestAvailableSelectedCallback',
              enableBestAvailableSelectedCallback)
          ..add('enableBestAvailableSelectionFailedCallback',
              enableBestAvailableSelectionFailedCallback)
          ..add('enableHoldSucceededCallback', enableHoldSucceededCallback)
          ..add('enableHoldFailedCallback', enableHoldFailedCallback)
          ..add(
              'enableHoldTokenExpiredCallback', enableHoldTokenExpiredCallback)
          ..add('enableSessionInitializedCallback',
              enableSessionInitializedCallback)
          ..add('enableReleaseHoldSucceededCallback',
              enableReleaseHoldSucceededCallback)
          ..add('enableReleaseHoldFailedCallback',
              enableReleaseHoldFailedCallback)
          ..add('enableSelectedObjectBookedCallback',
              enableSelectedObjectBookedCallback))
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

  SeatsioRegion? _region;
  SeatsioRegion? get region => _$this._region;
  set region(SeatsioRegion? region) => _$this._region = region;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  MapBuilder<String, String>? _messages;
  MapBuilder<String, String> get messages =>
      _$this._messages ??= new MapBuilder<String, String>();
  set messages(MapBuilder<String, String>? messages) =>
      _$this._messages = messages;

  ListBuilder<PricingForCategory>? _pricing;
  ListBuilder<PricingForCategory> get pricing =>
      _$this._pricing ??= new ListBuilder<PricingForCategory>();
  set pricing(ListBuilder<PricingForCategory>? pricing) =>
      _$this._pricing = pricing;

  Function(num price)? _priceFormatter;
  Function(num price)? get priceFormatter => _$this._priceFormatter;
  set priceFormatter(Function(num price)? priceFormatter) =>
      _$this._priceFormatter = priceFormatter;

  int? _numberOfPlacesToSelect;
  int? get numberOfPlacesToSelect => _$this._numberOfPlacesToSelect;
  set numberOfPlacesToSelect(int? numberOfPlacesToSelect) =>
      _$this._numberOfPlacesToSelect = numberOfPlacesToSelect;

  bool? _objectWithoutPricingSelectable;
  bool? get objectWithoutPricingSelectable =>
      _$this._objectWithoutPricingSelectable;
  set objectWithoutPricingSelectable(bool? objectWithoutPricingSelectable) =>
      _$this._objectWithoutPricingSelectable = objectWithoutPricingSelectable;

  ListBuilder<SelectedObject>? _selectedObjects;
  ListBuilder<SelectedObject> get selectedObjects =>
      _$this._selectedObjects ??= new ListBuilder<SelectedObject>();
  set selectedObjects(ListBuilder<SelectedObject>? selectedObjects) =>
      _$this._selectedObjects = selectedObjects;

  ObjectTooltipBuilder? _objectTooltip;
  ObjectTooltipBuilder get objectTooltip =>
      _$this._objectTooltip ??= new ObjectTooltipBuilder();
  set objectTooltip(ObjectTooltipBuilder? objectTooltip) =>
      _$this._objectTooltip = objectTooltip;

  String? _priceLevelsTooltipMessage;
  String? get priceLevelsTooltipMessage => _$this._priceLevelsTooltipMessage;
  set priceLevelsTooltipMessage(String? priceLevelsTooltipMessage) =>
      _$this._priceLevelsTooltipMessage = priceLevelsTooltipMessage;

  int? _maxSelectedObjects;
  int? get maxSelectedObjects => _$this._maxSelectedObjects;
  set maxSelectedObjects(int? maxSelectedObjects) =>
      _$this._maxSelectedObjects = maxSelectedObjects;

  List<Map<String, dynamic>>? _maxSelectedObjectList;
  List<Map<String, dynamic>>? get maxSelectedObjectList =>
      _$this._maxSelectedObjectList;
  set maxSelectedObjectList(
          List<Map<String, dynamic>>? maxSelectedObjectList) =>
      _$this._maxSelectedObjectList = maxSelectedObjectList;

  ListBuilder<String>? _availableCategories;
  ListBuilder<String> get availableCategories =>
      _$this._availableCategories ??= new ListBuilder<String>();
  set availableCategories(ListBuilder<String>? availableCategories) =>
      _$this._availableCategories = availableCategories;

  ListBuilder<String>? _unavailableCategories;
  ListBuilder<String> get unavailableCategories =>
      _$this._unavailableCategories ??= new ListBuilder<String>();
  set unavailableCategories(ListBuilder<String>? unavailableCategories) =>
      _$this._unavailableCategories = unavailableCategories;

  bool? _alwaysShowSectionContents;
  bool? get alwaysShowSectionContents => _$this._alwaysShowSectionContents;
  set alwaysShowSectionContents(bool? alwaysShowSectionContents) =>
      _$this._alwaysShowSectionContents = alwaysShowSectionContents;

  String? _showSectionContents;
  String? get showSectionContents => _$this._showSectionContents;
  set showSectionContents(String? showSectionContents) =>
      _$this._showSectionContents = showSectionContents;

  bool? _showLegend;
  bool? get showLegend => _$this._showLegend;
  set showLegend(bool? showLegend) => _$this._showLegend = showLegend;

  LegendForCategoryBuilder? _legend;
  LegendForCategoryBuilder get legend =>
      _$this._legend ??= new LegendForCategoryBuilder();
  set legend(LegendForCategoryBuilder? legend) => _$this._legend = legend;

  bool? _showMinimap;
  bool? get showMinimap => _$this._showMinimap;
  set showMinimap(bool? showMinimap) => _$this._showMinimap = showMinimap;

  String? _inputDevice;
  String? get inputDevice => _$this._inputDevice;
  set inputDevice(String? inputDevice) => _$this._inputDevice = inputDevice;

  bool? _showActiveSectionTooltipOnMobile;
  bool? get showActiveSectionTooltipOnMobile =>
      _$this._showActiveSectionTooltipOnMobile;
  set showActiveSectionTooltipOnMobile(
          bool? showActiveSectionTooltipOnMobile) =>
      _$this._showActiveSectionTooltipOnMobile =
          showActiveSectionTooltipOnMobile;

  ListBuilder<SelectionValidator>? _selectionValidators;
  ListBuilder<SelectionValidator> get selectionValidators =>
      _$this._selectionValidators ??= new ListBuilder<SelectionValidator>();
  set selectionValidators(
          ListBuilder<SelectionValidator>? selectionValidators) =>
      _$this._selectionValidators = selectionValidators;

  String? _mode;
  String? get mode => _$this._mode;
  set mode(String? mode) => _$this._mode = mode;

  bool? _holdOnSelectForGAs;
  bool? get holdOnSelectForGAs => _$this._holdOnSelectForGAs;
  set holdOnSelectForGAs(bool? holdOnSelectForGAs) =>
      _$this._holdOnSelectForGAs = holdOnSelectForGAs;

  String? _holdToken;
  String? get holdToken => _$this._holdToken;
  set holdToken(String? holdToken) => _$this._holdToken = holdToken;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  String? _objectLabel;
  String? get objectLabel => _$this._objectLabel;
  set objectLabel(String? objectLabel) => _$this._objectLabel = objectLabel;

  String? _objectIcon;
  String? get objectIcon => _$this._objectIcon;
  set objectIcon(String? objectIcon) => _$this._objectIcon = objectIcon;

  String? _isObjectVisible;
  String? get isObjectVisible => _$this._isObjectVisible;
  set isObjectVisible(String? isObjectVisible) =>
      _$this._isObjectVisible = isObjectVisible;

  String? _isObjectSelectable;
  String? get isObjectSelectable => _$this._isObjectSelectable;
  set isObjectSelectable(String? isObjectSelectable) =>
      _$this._isObjectSelectable = isObjectSelectable;

  String? _objectColor;
  String? get objectColor => _$this._objectColor;
  set objectColor(String? objectColor) => _$this._objectColor = objectColor;

  String? _sectionColor;
  String? get sectionColor => _$this._sectionColor;
  set sectionColor(String? sectionColor) => _$this._sectionColor = sectionColor;

  MapBuilder<String, String>? _extraConfig;
  MapBuilder<String, String> get extraConfig =>
      _$this._extraConfig ??= new MapBuilder<String, String>();
  set extraConfig(MapBuilder<String, String>? extraConfig) =>
      _$this._extraConfig = extraConfig;

  bool? _showFullScreenButton;
  bool? get showFullScreenButton => _$this._showFullScreenButton;
  set showFullScreenButton(bool? showFullScreenButton) =>
      _$this._showFullScreenButton = showFullScreenButton;

  ListBuilder<String>? _channels;
  ListBuilder<String> get channels =>
      _$this._channels ??= new ListBuilder<String>();
  set channels(ListBuilder<String>? channels) => _$this._channels = channels;

  bool? _enableChartRenderedCallback;
  bool? get enableChartRenderedCallback => _$this._enableChartRenderedCallback;
  set enableChartRenderedCallback(bool? enableChartRenderedCallback) =>
      _$this._enableChartRenderedCallback = enableChartRenderedCallback;

  bool? _enableChartRenderingFailedCallback;
  bool? get enableChartRenderingFailedCallback =>
      _$this._enableChartRenderingFailedCallback;
  set enableChartRenderingFailedCallback(
          bool? enableChartRenderingFailedCallback) =>
      _$this._enableChartRenderingFailedCallback =
          enableChartRenderingFailedCallback;

  bool? _enableObjectClickedCallback;
  bool? get enableObjectClickedCallback => _$this._enableObjectClickedCallback;
  set enableObjectClickedCallback(bool? enableObjectClickedCallback) =>
      _$this._enableObjectClickedCallback = enableObjectClickedCallback;

  bool? _enableObjectSelectedCallback;
  bool? get enableObjectSelectedCallback =>
      _$this._enableObjectSelectedCallback;
  set enableObjectSelectedCallback(bool? enableObjectSelectedCallback) =>
      _$this._enableObjectSelectedCallback = enableObjectSelectedCallback;

  bool? _enableObjectDeselectedCallback;
  bool? get enableObjectDeselectedCallback =>
      _$this._enableObjectDeselectedCallback;
  set enableObjectDeselectedCallback(bool? enableObjectDeselectedCallback) =>
      _$this._enableObjectDeselectedCallback = enableObjectDeselectedCallback;

  bool? _enableSelectionValidCallback;
  bool? get enableSelectionValidCallback =>
      _$this._enableSelectionValidCallback;
  set enableSelectionValidCallback(bool? enableSelectionValidCallback) =>
      _$this._enableSelectionValidCallback = enableSelectionValidCallback;

  bool? _enableSelectionInvalidCallback;
  bool? get enableSelectionInvalidCallback =>
      _$this._enableSelectionInvalidCallback;
  set enableSelectionInvalidCallback(bool? enableSelectionInvalidCallback) =>
      _$this._enableSelectionInvalidCallback = enableSelectionInvalidCallback;

  bool? _enableBestAvailableSelectedCallback;
  bool? get enableBestAvailableSelectedCallback =>
      _$this._enableBestAvailableSelectedCallback;
  set enableBestAvailableSelectedCallback(
          bool? enableBestAvailableSelectedCallback) =>
      _$this._enableBestAvailableSelectedCallback =
          enableBestAvailableSelectedCallback;

  bool? _enableBestAvailableSelectionFailedCallback;
  bool? get enableBestAvailableSelectionFailedCallback =>
      _$this._enableBestAvailableSelectionFailedCallback;
  set enableBestAvailableSelectionFailedCallback(
          bool? enableBestAvailableSelectionFailedCallback) =>
      _$this._enableBestAvailableSelectionFailedCallback =
          enableBestAvailableSelectionFailedCallback;

  bool? _enableHoldSucceededCallback;
  bool? get enableHoldSucceededCallback => _$this._enableHoldSucceededCallback;
  set enableHoldSucceededCallback(bool? enableHoldSucceededCallback) =>
      _$this._enableHoldSucceededCallback = enableHoldSucceededCallback;

  bool? _enableHoldFailedCallback;
  bool? get enableHoldFailedCallback => _$this._enableHoldFailedCallback;
  set enableHoldFailedCallback(bool? enableHoldFailedCallback) =>
      _$this._enableHoldFailedCallback = enableHoldFailedCallback;

  bool? _enableHoldTokenExpiredCallback;
  bool? get enableHoldTokenExpiredCallback =>
      _$this._enableHoldTokenExpiredCallback;
  set enableHoldTokenExpiredCallback(bool? enableHoldTokenExpiredCallback) =>
      _$this._enableHoldTokenExpiredCallback = enableHoldTokenExpiredCallback;

  bool? _enableSessionInitializedCallback;
  bool? get enableSessionInitializedCallback =>
      _$this._enableSessionInitializedCallback;
  set enableSessionInitializedCallback(
          bool? enableSessionInitializedCallback) =>
      _$this._enableSessionInitializedCallback =
          enableSessionInitializedCallback;

  bool? _enableReleaseHoldSucceededCallback;
  bool? get enableReleaseHoldSucceededCallback =>
      _$this._enableReleaseHoldSucceededCallback;
  set enableReleaseHoldSucceededCallback(
          bool? enableReleaseHoldSucceededCallback) =>
      _$this._enableReleaseHoldSucceededCallback =
          enableReleaseHoldSucceededCallback;

  bool? _enableReleaseHoldFailedCallback;
  bool? get enableReleaseHoldFailedCallback =>
      _$this._enableReleaseHoldFailedCallback;
  set enableReleaseHoldFailedCallback(bool? enableReleaseHoldFailedCallback) =>
      _$this._enableReleaseHoldFailedCallback = enableReleaseHoldFailedCallback;

  bool? _enableSelectedObjectBookedCallback;
  bool? get enableSelectedObjectBookedCallback =>
      _$this._enableSelectedObjectBookedCallback;
  set enableSelectedObjectBookedCallback(
          bool? enableSelectedObjectBookedCallback) =>
      _$this._enableSelectedObjectBookedCallback =
          enableSelectedObjectBookedCallback;

  SeatingChartConfigBuilder();

  SeatingChartConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _workspaceKey = $v.workspaceKey;
      _event = $v.event;
      _region = $v.region;
      _language = $v.language;
      _messages = $v.messages?.toBuilder();
      _pricing = $v.pricing?.toBuilder();
      _priceFormatter = $v.priceFormatter;
      _numberOfPlacesToSelect = $v.numberOfPlacesToSelect;
      _objectWithoutPricingSelectable = $v.objectWithoutPricingSelectable;
      _selectedObjects = $v.selectedObjects?.toBuilder();
      _objectTooltip = $v.objectTooltip?.toBuilder();
      _priceLevelsTooltipMessage = $v.priceLevelsTooltipMessage;
      _maxSelectedObjects = $v.maxSelectedObjects;
      _maxSelectedObjectList = $v.maxSelectedObjectList;
      _availableCategories = $v.availableCategories?.toBuilder();
      _unavailableCategories = $v.unavailableCategories?.toBuilder();
      _alwaysShowSectionContents = $v.alwaysShowSectionContents;
      _showSectionContents = $v.showSectionContents;
      _showLegend = $v.showLegend;
      _legend = $v.legend?.toBuilder();
      _showMinimap = $v.showMinimap;
      _inputDevice = $v.inputDevice;
      _showActiveSectionTooltipOnMobile = $v.showActiveSectionTooltipOnMobile;
      _selectionValidators = $v.selectionValidators?.toBuilder();
      _mode = $v.mode;
      _holdOnSelectForGAs = $v.holdOnSelectForGAs;
      _holdToken = $v.holdToken;
      _session = $v.session;
      _objectLabel = $v.objectLabel;
      _objectIcon = $v.objectIcon;
      _isObjectVisible = $v.isObjectVisible;
      _isObjectSelectable = $v.isObjectSelectable;
      _objectColor = $v.objectColor;
      _sectionColor = $v.sectionColor;
      _extraConfig = $v.extraConfig?.toBuilder();
      _showFullScreenButton = $v.showFullScreenButton;
      _channels = $v.channels?.toBuilder();
      _enableChartRenderedCallback = $v.enableChartRenderedCallback;
      _enableChartRenderingFailedCallback =
          $v.enableChartRenderingFailedCallback;
      _enableObjectClickedCallback = $v.enableObjectClickedCallback;
      _enableObjectSelectedCallback = $v.enableObjectSelectedCallback;
      _enableObjectDeselectedCallback = $v.enableObjectDeselectedCallback;
      _enableSelectionValidCallback = $v.enableSelectionValidCallback;
      _enableSelectionInvalidCallback = $v.enableSelectionInvalidCallback;
      _enableBestAvailableSelectedCallback =
          $v.enableBestAvailableSelectedCallback;
      _enableBestAvailableSelectionFailedCallback =
          $v.enableBestAvailableSelectionFailedCallback;
      _enableHoldSucceededCallback = $v.enableHoldSucceededCallback;
      _enableHoldFailedCallback = $v.enableHoldFailedCallback;
      _enableHoldTokenExpiredCallback = $v.enableHoldTokenExpiredCallback;
      _enableSessionInitializedCallback = $v.enableSessionInitializedCallback;
      _enableReleaseHoldSucceededCallback =
          $v.enableReleaseHoldSucceededCallback;
      _enableReleaseHoldFailedCallback = $v.enableReleaseHoldFailedCallback;
      _enableSelectedObjectBookedCallback =
          $v.enableSelectedObjectBookedCallback;
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
            event: BuiltValueNullFieldError.checkNotNull(
                event, r'SeatingChartConfig', 'event'),
            region: BuiltValueNullFieldError.checkNotNull(
                region, r'SeatingChartConfig', 'region'),
            language: language,
            messages: _messages?.build(),
            pricing: _pricing?.build(),
            priceFormatter: priceFormatter,
            numberOfPlacesToSelect: numberOfPlacesToSelect,
            objectWithoutPricingSelectable: objectWithoutPricingSelectable,
            selectedObjects: _selectedObjects?.build(),
            objectTooltip: _objectTooltip?.build(),
            priceLevelsTooltipMessage: priceLevelsTooltipMessage,
            maxSelectedObjects: maxSelectedObjects,
            maxSelectedObjectList: maxSelectedObjectList,
            availableCategories: _availableCategories?.build(),
            unavailableCategories: _unavailableCategories?.build(),
            alwaysShowSectionContents: alwaysShowSectionContents,
            showSectionContents: showSectionContents,
            showLegend: showLegend,
            legend: _legend?.build(),
            showMinimap: showMinimap,
            inputDevice: inputDevice,
            showActiveSectionTooltipOnMobile: showActiveSectionTooltipOnMobile,
            selectionValidators: _selectionValidators?.build(),
            mode: mode,
            holdOnSelectForGAs: holdOnSelectForGAs,
            holdToken: holdToken,
            session: session,
            objectLabel: objectLabel,
            objectIcon: objectIcon,
            isObjectVisible: isObjectVisible,
            isObjectSelectable: isObjectSelectable,
            objectColor: objectColor,
            sectionColor: sectionColor,
            extraConfig: _extraConfig?.build(),
            showFullScreenButton: showFullScreenButton,
            channels: _channels?.build(),
            enableChartRenderedCallback: BuiltValueNullFieldError.checkNotNull(
                enableChartRenderedCallback,
                r'SeatingChartConfig',
                'enableChartRenderedCallback'),
            enableChartRenderingFailedCallback:
                BuiltValueNullFieldError.checkNotNull(
                    enableChartRenderingFailedCallback,
                    r'SeatingChartConfig',
                    'enableChartRenderingFailedCallback'),
            enableObjectClickedCallback: BuiltValueNullFieldError.checkNotNull(
                enableObjectClickedCallback,
                r'SeatingChartConfig',
                'enableObjectClickedCallback'),
            enableObjectSelectedCallback: BuiltValueNullFieldError.checkNotNull(
                enableObjectSelectedCallback,
                r'SeatingChartConfig',
                'enableObjectSelectedCallback'),
            enableObjectDeselectedCallback:
                BuiltValueNullFieldError.checkNotNull(
                    enableObjectDeselectedCallback,
                    r'SeatingChartConfig',
                    'enableObjectDeselectedCallback'),
            enableSelectionValidCallback: BuiltValueNullFieldError.checkNotNull(
                enableSelectionValidCallback,
                r'SeatingChartConfig',
                'enableSelectionValidCallback'),
            enableSelectionInvalidCallback:
                BuiltValueNullFieldError.checkNotNull(
                    enableSelectionInvalidCallback,
                    r'SeatingChartConfig',
                    'enableSelectionInvalidCallback'),
            enableBestAvailableSelectedCallback:
                BuiltValueNullFieldError.checkNotNull(
                    enableBestAvailableSelectedCallback,
                    r'SeatingChartConfig',
                    'enableBestAvailableSelectedCallback'),
            enableBestAvailableSelectionFailedCallback:
                BuiltValueNullFieldError.checkNotNull(
                    enableBestAvailableSelectionFailedCallback,
                    r'SeatingChartConfig',
                    'enableBestAvailableSelectionFailedCallback'),
            enableHoldSucceededCallback: BuiltValueNullFieldError.checkNotNull(
                enableHoldSucceededCallback,
                r'SeatingChartConfig',
                'enableHoldSucceededCallback'),
            enableHoldFailedCallback: BuiltValueNullFieldError.checkNotNull(
                enableHoldFailedCallback,
                r'SeatingChartConfig',
                'enableHoldFailedCallback'),
            enableHoldTokenExpiredCallback:
                BuiltValueNullFieldError.checkNotNull(
                    enableHoldTokenExpiredCallback,
                    r'SeatingChartConfig',
                    'enableHoldTokenExpiredCallback'),
            enableSessionInitializedCallback:
                BuiltValueNullFieldError.checkNotNull(
                    enableSessionInitializedCallback,
                    r'SeatingChartConfig',
                    'enableSessionInitializedCallback'),
            enableReleaseHoldSucceededCallback:
                BuiltValueNullFieldError.checkNotNull(
                    enableReleaseHoldSucceededCallback,
                    r'SeatingChartConfig',
                    'enableReleaseHoldSucceededCallback'),
            enableReleaseHoldFailedCallback:
                BuiltValueNullFieldError.checkNotNull(
                    enableReleaseHoldFailedCallback,
                    r'SeatingChartConfig',
                    'enableReleaseHoldFailedCallback'),
            enableSelectedObjectBookedCallback:
                BuiltValueNullFieldError.checkNotNull(
                    enableSelectedObjectBookedCallback,
                    r'SeatingChartConfig',
                    'enableSelectedObjectBookedCallback'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messages';
        _messages?.build();
        _$failedField = 'pricing';
        _pricing?.build();

        _$failedField = 'selectedObjects';
        _selectedObjects?.build();
        _$failedField = 'objectTooltip';
        _objectTooltip?.build();

        _$failedField = 'availableCategories';
        _availableCategories?.build();
        _$failedField = 'unavailableCategories';
        _unavailableCategories?.build();

        _$failedField = 'legend';
        _legend?.build();

        _$failedField = 'selectionValidators';
        _selectionValidators?.build();

        _$failedField = 'extraConfig';
        _extraConfig?.build();

        _$failedField = 'channels';
        _channels?.build();
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

class _$SelectedObject extends SelectedObject {
  @override
  final String label;
  @override
  final String? ticketType;
  @override
  final int? amount;

  factory _$SelectedObject([void Function(SelectedObjectBuilder)? updates]) =>
      (new SelectedObjectBuilder()..update(updates))._build();

  _$SelectedObject._({required this.label, this.ticketType, this.amount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(label, r'SelectedObject', 'label');
  }

  @override
  SelectedObject rebuild(void Function(SelectedObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectedObjectBuilder toBuilder() =>
      new SelectedObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectedObject &&
        label == other.label &&
        ticketType == other.ticketType &&
        amount == other.amount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, ticketType.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SelectedObjectBuilder
    implements Builder<SelectedObject, SelectedObjectBuilder> {
  _$SelectedObject? _$v;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _ticketType;
  String? get ticketType => _$this._ticketType;
  set ticketType(String? ticketType) => _$this._ticketType = ticketType;

  int? _amount;
  int? get amount => _$this._amount;
  set amount(int? amount) => _$this._amount = amount;

  SelectedObjectBuilder();

  SelectedObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _label = $v.label;
      _ticketType = $v.ticketType;
      _amount = $v.amount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectedObject other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectedObject;
  }

  @override
  void update(void Function(SelectedObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectedObject build() => _build();

  _$SelectedObject _build() {
    final _$result = _$v ??
        new _$SelectedObject._(
          label: BuiltValueNullFieldError.checkNotNull(
              label, r'SelectedObject', 'label'),
          ticketType: ticketType,
          amount: amount,
        );
    replace(_$result);
    return _$result;
  }
}

class _$ObjectTooltip extends ObjectTooltip {
  @override
  final bool showActionHint;
  @override
  final bool showAvailability;
  @override
  final bool showCategory;
  @override
  final bool showLabel;
  @override
  final bool showPricing;
  @override
  final bool showUnavailableNotice;
  @override
  final bool stylizedLabel;
  @override
  final bool confirmSelectionOnMobile;

  factory _$ObjectTooltip([void Function(ObjectTooltipBuilder)? updates]) =>
      (new ObjectTooltipBuilder()..update(updates))._build();

  _$ObjectTooltip._(
      {required this.showActionHint,
      required this.showAvailability,
      required this.showCategory,
      required this.showLabel,
      required this.showPricing,
      required this.showUnavailableNotice,
      required this.stylizedLabel,
      required this.confirmSelectionOnMobile})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        showActionHint, r'ObjectTooltip', 'showActionHint');
    BuiltValueNullFieldError.checkNotNull(
        showAvailability, r'ObjectTooltip', 'showAvailability');
    BuiltValueNullFieldError.checkNotNull(
        showCategory, r'ObjectTooltip', 'showCategory');
    BuiltValueNullFieldError.checkNotNull(
        showLabel, r'ObjectTooltip', 'showLabel');
    BuiltValueNullFieldError.checkNotNull(
        showPricing, r'ObjectTooltip', 'showPricing');
    BuiltValueNullFieldError.checkNotNull(
        showUnavailableNotice, r'ObjectTooltip', 'showUnavailableNotice');
    BuiltValueNullFieldError.checkNotNull(
        stylizedLabel, r'ObjectTooltip', 'stylizedLabel');
    BuiltValueNullFieldError.checkNotNull(
        confirmSelectionOnMobile, r'ObjectTooltip', 'confirmSelectionOnMobile');
  }

  @override
  ObjectTooltip rebuild(void Function(ObjectTooltipBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectTooltipBuilder toBuilder() => new ObjectTooltipBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectTooltip &&
        showActionHint == other.showActionHint &&
        showAvailability == other.showAvailability &&
        showCategory == other.showCategory &&
        showLabel == other.showLabel &&
        showPricing == other.showPricing &&
        showUnavailableNotice == other.showUnavailableNotice &&
        stylizedLabel == other.stylizedLabel &&
        confirmSelectionOnMobile == other.confirmSelectionOnMobile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, showActionHint.hashCode);
    _$hash = $jc(_$hash, showAvailability.hashCode);
    _$hash = $jc(_$hash, showCategory.hashCode);
    _$hash = $jc(_$hash, showLabel.hashCode);
    _$hash = $jc(_$hash, showPricing.hashCode);
    _$hash = $jc(_$hash, showUnavailableNotice.hashCode);
    _$hash = $jc(_$hash, stylizedLabel.hashCode);
    _$hash = $jc(_$hash, confirmSelectionOnMobile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObjectTooltip')
          ..add('showActionHint', showActionHint)
          ..add('showAvailability', showAvailability)
          ..add('showCategory', showCategory)
          ..add('showLabel', showLabel)
          ..add('showPricing', showPricing)
          ..add('showUnavailableNotice', showUnavailableNotice)
          ..add('stylizedLabel', stylizedLabel)
          ..add('confirmSelectionOnMobile', confirmSelectionOnMobile))
        .toString();
  }
}

class ObjectTooltipBuilder
    implements Builder<ObjectTooltip, ObjectTooltipBuilder> {
  _$ObjectTooltip? _$v;

  bool? _showActionHint;
  bool? get showActionHint => _$this._showActionHint;
  set showActionHint(bool? showActionHint) =>
      _$this._showActionHint = showActionHint;

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

  bool? _confirmSelectionOnMobile;
  bool? get confirmSelectionOnMobile => _$this._confirmSelectionOnMobile;
  set confirmSelectionOnMobile(bool? confirmSelectionOnMobile) =>
      _$this._confirmSelectionOnMobile = confirmSelectionOnMobile;

  ObjectTooltipBuilder();

  ObjectTooltipBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _showActionHint = $v.showActionHint;
      _showAvailability = $v.showAvailability;
      _showCategory = $v.showCategory;
      _showLabel = $v.showLabel;
      _showPricing = $v.showPricing;
      _showUnavailableNotice = $v.showUnavailableNotice;
      _stylizedLabel = $v.stylizedLabel;
      _confirmSelectionOnMobile = $v.confirmSelectionOnMobile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectTooltip other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ObjectTooltip;
  }

  @override
  void update(void Function(ObjectTooltipBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectTooltip build() => _build();

  _$ObjectTooltip _build() {
    final _$result = _$v ??
        new _$ObjectTooltip._(
          showActionHint: BuiltValueNullFieldError.checkNotNull(
              showActionHint, r'ObjectTooltip', 'showActionHint'),
          showAvailability: BuiltValueNullFieldError.checkNotNull(
              showAvailability, r'ObjectTooltip', 'showAvailability'),
          showCategory: BuiltValueNullFieldError.checkNotNull(
              showCategory, r'ObjectTooltip', 'showCategory'),
          showLabel: BuiltValueNullFieldError.checkNotNull(
              showLabel, r'ObjectTooltip', 'showLabel'),
          showPricing: BuiltValueNullFieldError.checkNotNull(
              showPricing, r'ObjectTooltip', 'showPricing'),
          showUnavailableNotice: BuiltValueNullFieldError.checkNotNull(
              showUnavailableNotice, r'ObjectTooltip', 'showUnavailableNotice'),
          stylizedLabel: BuiltValueNullFieldError.checkNotNull(
              stylizedLabel, r'ObjectTooltip', 'stylizedLabel'),
          confirmSelectionOnMobile: BuiltValueNullFieldError.checkNotNull(
              confirmSelectionOnMobile,
              r'ObjectTooltip',
              'confirmSelectionOnMobile'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$LegendForCategory extends LegendForCategory {
  @override
  final bool hideNonSelectableCategories;
  @override
  final bool hidePricing;

  factory _$LegendForCategory(
          [void Function(LegendForCategoryBuilder)? updates]) =>
      (new LegendForCategoryBuilder()..update(updates))._build();

  _$LegendForCategory._(
      {required this.hideNonSelectableCategories, required this.hidePricing})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(hideNonSelectableCategories,
        r'LegendForCategory', 'hideNonSelectableCategories');
    BuiltValueNullFieldError.checkNotNull(
        hidePricing, r'LegendForCategory', 'hidePricing');
  }

  @override
  LegendForCategory rebuild(void Function(LegendForCategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LegendForCategoryBuilder toBuilder() =>
      new LegendForCategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LegendForCategory &&
        hideNonSelectableCategories == other.hideNonSelectableCategories &&
        hidePricing == other.hidePricing;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hideNonSelectableCategories.hashCode);
    _$hash = $jc(_$hash, hidePricing.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LegendForCategory')
          ..add('hideNonSelectableCategories', hideNonSelectableCategories)
          ..add('hidePricing', hidePricing))
        .toString();
  }
}

class LegendForCategoryBuilder
    implements Builder<LegendForCategory, LegendForCategoryBuilder> {
  _$LegendForCategory? _$v;

  bool? _hideNonSelectableCategories;
  bool? get hideNonSelectableCategories => _$this._hideNonSelectableCategories;
  set hideNonSelectableCategories(bool? hideNonSelectableCategories) =>
      _$this._hideNonSelectableCategories = hideNonSelectableCategories;

  bool? _hidePricing;
  bool? get hidePricing => _$this._hidePricing;
  set hidePricing(bool? hidePricing) => _$this._hidePricing = hidePricing;

  LegendForCategoryBuilder();

  LegendForCategoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hideNonSelectableCategories = $v.hideNonSelectableCategories;
      _hidePricing = $v.hidePricing;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LegendForCategory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LegendForCategory;
  }

  @override
  void update(void Function(LegendForCategoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LegendForCategory build() => _build();

  _$LegendForCategory _build() {
    final _$result = _$v ??
        new _$LegendForCategory._(
          hideNonSelectableCategories: BuiltValueNullFieldError.checkNotNull(
              hideNonSelectableCategories,
              r'LegendForCategory',
              'hideNonSelectableCategories'),
          hidePricing: BuiltValueNullFieldError.checkNotNull(
              hidePricing, r'LegendForCategory', 'hidePricing'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$BestAvailable extends BestAvailable {
  @override
  final int number;
  @override
  final BuiltList<String> category;
  @override
  final TicketTypePricing ticketTypes;
  @override
  final bool clearSelection;

  factory _$BestAvailable([void Function(BestAvailableBuilder)? updates]) =>
      (new BestAvailableBuilder()..update(updates))._build();

  _$BestAvailable._(
      {required this.number,
      required this.category,
      required this.ticketTypes,
      required this.clearSelection})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(number, r'BestAvailable', 'number');
    BuiltValueNullFieldError.checkNotNull(
        category, r'BestAvailable', 'category');
    BuiltValueNullFieldError.checkNotNull(
        ticketTypes, r'BestAvailable', 'ticketTypes');
    BuiltValueNullFieldError.checkNotNull(
        clearSelection, r'BestAvailable', 'clearSelection');
  }

  @override
  BestAvailable rebuild(void Function(BestAvailableBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BestAvailableBuilder toBuilder() => new BestAvailableBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BestAvailable &&
        number == other.number &&
        category == other.category &&
        ticketTypes == other.ticketTypes &&
        clearSelection == other.clearSelection;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, ticketTypes.hashCode);
    _$hash = $jc(_$hash, clearSelection.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BestAvailable')
          ..add('number', number)
          ..add('category', category)
          ..add('ticketTypes', ticketTypes)
          ..add('clearSelection', clearSelection))
        .toString();
  }
}

class BestAvailableBuilder
    implements Builder<BestAvailable, BestAvailableBuilder> {
  _$BestAvailable? _$v;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  ListBuilder<String>? _category;
  ListBuilder<String> get category =>
      _$this._category ??= new ListBuilder<String>();
  set category(ListBuilder<String>? category) => _$this._category = category;

  TicketTypePricingBuilder? _ticketTypes;
  TicketTypePricingBuilder get ticketTypes =>
      _$this._ticketTypes ??= new TicketTypePricingBuilder();
  set ticketTypes(TicketTypePricingBuilder? ticketTypes) =>
      _$this._ticketTypes = ticketTypes;

  bool? _clearSelection;
  bool? get clearSelection => _$this._clearSelection;
  set clearSelection(bool? clearSelection) =>
      _$this._clearSelection = clearSelection;

  BestAvailableBuilder();

  BestAvailableBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _number = $v.number;
      _category = $v.category.toBuilder();
      _ticketTypes = $v.ticketTypes.toBuilder();
      _clearSelection = $v.clearSelection;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BestAvailable other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BestAvailable;
  }

  @override
  void update(void Function(BestAvailableBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BestAvailable build() => _build();

  _$BestAvailable _build() {
    _$BestAvailable _$result;
    try {
      _$result = _$v ??
          new _$BestAvailable._(
            number: BuiltValueNullFieldError.checkNotNull(
                number, r'BestAvailable', 'number'),
            category: category.build(),
            ticketTypes: ticketTypes.build(),
            clearSelection: BuiltValueNullFieldError.checkNotNull(
                clearSelection, r'BestAvailable', 'clearSelection'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'category';
        category.build();
        _$failedField = 'ticketTypes';
        ticketTypes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BestAvailable', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SelectionValidator extends SelectionValidator {
  @override
  final String type;

  factory _$SelectionValidator(
          [void Function(SelectionValidatorBuilder)? updates]) =>
      (new SelectionValidatorBuilder()..update(updates))._build();

  _$SelectionValidator._({required this.type}) : super._() {
    BuiltValueNullFieldError.checkNotNull(type, r'SelectionValidator', 'type');
  }

  @override
  SelectionValidator rebuild(
          void Function(SelectionValidatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectionValidatorBuilder toBuilder() =>
      new SelectionValidatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectionValidator && type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SelectionValidator')
          ..add('type', type))
        .toString();
  }
}

class SelectionValidatorBuilder
    implements Builder<SelectionValidator, SelectionValidatorBuilder> {
  _$SelectionValidator? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  SelectionValidatorBuilder();

  SelectionValidatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectionValidator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectionValidator;
  }

  @override
  void update(void Function(SelectionValidatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectionValidator build() => _build();

  _$SelectionValidator _build() {
    final _$result = _$v ??
        new _$SelectionValidator._(
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'SelectionValidator', 'type'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
