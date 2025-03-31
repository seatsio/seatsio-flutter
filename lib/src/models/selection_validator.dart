import 'package:built_value/built_value.dart';

part 'selection_validator.g.dart';

abstract class SelectionValidator {
  Map<String, dynamic> toJson();
}

enum NoOrphanSeatsMode {
  strict,
  lenient;

  String toJson() {
    return const {
      NoOrphanSeatsMode.strict: 'strict',
      NoOrphanSeatsMode.lenient: 'lenient',
    }[this]!;
  }
}

abstract class NoOrphanSeats implements Built<NoOrphanSeats, NoOrphanSeatsBuilder>, SelectionValidator {
  NoOrphanSeatsMode? get mode;

  bool? get ignoreCategories;

  bool? get highlight;

  NoOrphanSeats._();

  factory NoOrphanSeats({NoOrphanSeatsMode? mode, bool? ignoreCategories, bool? highlight}) =>
      _$NoOrphanSeats._(mode: mode, ignoreCategories: ignoreCategories, highlight: highlight);

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': 'noOrphanSeats',
      if (mode != null) 'mode': mode!.toJson(),
      if (ignoreCategories != null) 'ignoreCategories': ignoreCategories!,
      if (highlight != null) 'highlight': highlight!,
    };
  }
}

abstract class ConsecutiveSeats implements Built<ConsecutiveSeats, ConsecutiveSeatsBuilder>, SelectionValidator {
  ConsecutiveSeats._();

  factory ConsecutiveSeats() => _$ConsecutiveSeats._();

  @override
  Map<String, dynamic> toJson() {
    return {'type': 'consecutiveSeats'};
  }
}

abstract class MinimumSelectedPlaces
    implements Built<MinimumSelectedPlaces, MinimumSelectedPlacesBuilder>, SelectionValidator {
  int get minimum;

  MinimumSelectedPlaces._();

  factory MinimumSelectedPlaces(int minimum) => _$MinimumSelectedPlaces._(minimum: minimum);

  @override
  Map<String, dynamic> toJson() {
    return {'type': 'minimumSelectedPlaces', 'minimum': minimum};
  }
}
