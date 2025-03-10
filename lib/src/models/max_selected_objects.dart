class MaxSelectedObjects {
  final List<MaxSelectedObjectsRule> rules;
  final MaxSelectedObjectsTotalRule? total;

  MaxSelectedObjects.rules(List<MaxSelectedObjectsRule> rules, {this.total}) : rules = _validateRules(rules);

  MaxSelectedObjects.total(int max)
      : rules = [],
        total = MaxSelectedObjectsTotalRule(max);

  static List<MaxSelectedObjectsRule> _validateRules(List<MaxSelectedObjectsRule> rules) {
    bool hasPerTicketType = rules.any((r) => r is MaxSelectedObjectsPerTicketTypeRule);
    bool hasPerCategory = rules.any((r) => r is MaxSelectedObjectsPerCategoryRule);

    if (hasPerTicketType && hasPerCategory) {
      throw ArgumentError("Cannot mix perTicketType and perCategory rules in maxSelectedObjects");
    }

    return rules;
  }

  dynamic toJson() {
    final data = rules.map((r) => r.toJson()).toList();
    if (total != null) {
      data.add(total!.toJson());
    }
    return data.isEmpty ? null : data;
  }
}

abstract class MaxSelectedObjectsRule {
  Map<String, dynamic> toJson();

  factory MaxSelectedObjectsRule.perTicketType({required String ticketType, required int quantity}) =
      MaxSelectedObjectsPerTicketTypeRule;

  factory MaxSelectedObjectsRule.perCategory({required String category, required int quantity}) =
      MaxSelectedObjectsPerCategoryRule;

  factory MaxSelectedObjectsRule.total(int max) = MaxSelectedObjectsTotalRule;
}

class MaxSelectedObjectsPerTicketTypeRule implements MaxSelectedObjectsRule {
  final String ticketType;
  final int quantity;

  MaxSelectedObjectsPerTicketTypeRule({required this.ticketType, required this.quantity});

  @override
  Map<String, dynamic> toJson() => {"ticketType": ticketType, "quantity": quantity};
}

class MaxSelectedObjectsPerCategoryRule implements MaxSelectedObjectsRule {
  final String category;
  final int? quantity;
  final List<MaxSelectedObjectsPerTicketTypeRule>? ticketTypes;

  MaxSelectedObjectsPerCategoryRule({required this.category, this.quantity, this.ticketTypes}) {
    if ((quantity == null) == (ticketTypes == null)) {
      throw ArgumentError("Either quantity or ticketTypes must be provided, but not both");
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {"category": category};
    if (quantity != null) {
      data["quantity"] = quantity;
    } else if (ticketTypes != null) {
      data["ticketTypes"] = ticketTypes!.map((t) => t.toJson()).toList();
    }
    return data;
  }
}

class MaxSelectedObjectsTotalRule implements MaxSelectedObjectsRule {
  final int max;

  MaxSelectedObjectsTotalRule(this.max);

  @override
  Map<String, dynamic> toJson() => {"total": max};
}
