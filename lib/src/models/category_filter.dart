import 'package:built_value/built_value.dart';

part 'category_filter.g.dart';

enum CategoryFilterSortBy {
  price,
  none;

  String toJson() {
    return const {
      CategoryFilterSortBy.price: 'price',
      CategoryFilterSortBy.none: 'none',
    }[this]!;
  }
}


abstract class CategoryFilter implements Built<CategoryFilter, CategoryFilterBuilder> {
  bool? get enabled;

  bool? get multiSelect;

  bool? get zoomOnSelect;

  CategoryFilterSortBy? get sortBy;

  CategoryFilter._();

  factory CategoryFilter([void Function(CategoryFilterBuilder b)? updates]) = _$CategoryFilter;

  static void _initializeBuilder(CategoryFilterBuilder b) {}

  Map<String, dynamic> toJson() {
    return {
      if (enabled != null) 'enabled': enabled,
      if (multiSelect != null) 'multiSelect': multiSelect,
      if (zoomOnSelect != null) 'zoomOnSelect': zoomOnSelect,
      if (sortBy != null) 'sortBy': sortBy!.toJson(),
    };
  }
}
