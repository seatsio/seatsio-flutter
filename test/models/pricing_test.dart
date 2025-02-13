import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:seatsio/src/models/pricing_for_category.dart';
import 'package:seatsio/src/util/serializers.dart';

void main() {
  group('Pricing Serialization', () {
    test('Simple Pricing serializes correctly', () {
      final pricing = BuiltList([
        PricingForCategory(category: 1, price: 30),
        PricingForCategory(category: 2, price: 40),
        PricingForCategory(category: 3, price: 50),
      ]);


      final serialized = serializers.serialize(
        pricing,
        specifiedType:
        const FullType(BuiltList, [FullType(PricingForCategory)]),
      );

      final jsonEncoded = jsonEncode(serialized);

      const expectedJson = '''
      [
        { "category": 1, "price": 30 },
        { "category": 2, "price": 40 },
        { "category": 3, "price": 50 }
      ]
      ''';

      expect(jsonDecode(jsonEncoded), jsonDecode(expectedJson));
    });
  });
}
