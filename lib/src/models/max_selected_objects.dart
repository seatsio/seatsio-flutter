import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'max_selected_objects.g.dart';

abstract class MaxSelectedObjects {
  dynamic toJson();
}

abstract class MaxSelectedObjectsNumber
    implements Built<MaxSelectedObjectsNumber, MaxSelectedObjectsNumberBuilder>, MaxSelectedObjects {
  int get max;

  MaxSelectedObjectsNumber._();

  factory MaxSelectedObjectsNumber(int max) => _$MaxSelectedObjectsNumber._(max: max);

  @override
  int toJson() => max;
}

abstract class MaxSelectedObjectsPerTicketType
    implements Built<MaxSelectedObjectsPerTicketType, MaxSelectedObjectsPerTicketTypeBuilder>, MaxSelectedObjects {
  BuiltList<MaxSelectedObjectsRule> get rules;

  MaxSelectedObjectsPerTicketType._();

  factory MaxSelectedObjectsPerTicketType(List<MaxSelectedObjectsRule> rules) =>
      _$MaxSelectedObjectsPerTicketType._(rules: BuiltList(rules));

  @override
  List<Map<String, dynamic>> toJson() => rules.map((r) => r.toJson()).toList();
}

abstract class MaxSelectedObjectsRule implements Built<MaxSelectedObjectsRule, MaxSelectedObjectsRuleBuilder> {
  String get ticketType;

  int get quantity;

  MaxSelectedObjectsRule._();

  factory MaxSelectedObjectsRule({required String ticketType, required int quantity}) =>
      _$MaxSelectedObjectsRule._(ticketType: ticketType, quantity: quantity);

  Map<String, dynamic> toJson() => {"ticketType": ticketType, "quantity": quantity};
}
