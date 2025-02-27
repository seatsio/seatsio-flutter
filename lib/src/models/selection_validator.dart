import 'package:built_value/built_value.dart';
import 'package:flutter/foundation.dart';

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
