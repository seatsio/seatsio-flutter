import 'package:flutter_test/flutter_test.dart';
import 'package:seatsio_flutter/src/models/best_available_for_holding.dart';
import 'package:seatsio_flutter/src/models/best_available_held_result.dart';

void main() {
  group('BestAvailableForHolding', () {
    test('toJson with all fields', () {
      final bestAvailable = BestAvailableForHolding(
        number: 3,
        categories: ['cat1', 'cat2'],
        zone: 'zone1',
        sections: ['section1', 'section2'],
        accessibleSeats: 2,
        ticketTypes: {'adult': 2, 'child': 1},
      );

      final json = bestAvailable.toJson();

      expect(json['number'], 3);
      expect(json['categories'], ['cat1', 'cat2']);
      expect(json['zone'], 'zone1');
      expect(json['sections'], ['section1', 'section2']);
      expect(json['accessibleSeats'], 2);
      expect(json['ticketTypes'], {'adult': 2, 'child': 1});
    });

    test('toJson omits null fields', () {
      final bestAvailable = BestAvailableForHolding(number: 5);

      final json = bestAvailable.toJson();

      expect(json['number'], 5);
      expect(json.containsKey('categories'), false);
      expect(json.containsKey('zone'), false);
      expect(json.containsKey('sections'), false);
      expect(json.containsKey('accessibleSeats'), false);
      expect(json.containsKey('ticketTypes'), false);
    });

    test('toJson with only ticketTypes', () {
      final bestAvailable = BestAvailableForHolding(
        ticketTypes: {'vip': 4},
      );

      final json = bestAvailable.toJson();

      expect(json.containsKey('number'), false);
      expect(json['ticketTypes'], {'vip': 4});
    });
  });

  group('BestAvailableHeldResult', () {
    test('fromJson with all fields', () {
      final result = BestAvailableHeldResult.fromJson({
        'objects': [
          {'objectType': 'seat', 'label': 'A-1', 'labels': {'own': '1', 'parent': 'A'}},
          {'objectType': 'seat', 'label': 'A-2', 'labels': {'own': '2', 'parent': 'A'}},
        ],
        'nextToEachOther': true,
      });

      expect(result.objects.length, 2);
      expect(result.objects[0].label, 'A-1');
      expect(result.objects[1].label, 'A-2');
      expect(result.nextToEachOther, true);
    });

    test('fromJson without nextToEachOther', () {
      final result = BestAvailableHeldResult.fromJson({
        'objects': [
          {'objectType': 'seat', 'label': 'A-1', 'labels': {'own': '1', 'parent': 'A'}},
        ],
      });

      expect(result.objects.length, 1);
      expect(result.objects[0].label, 'A-1');
      expect(result.nextToEachOther, isNull);
    });
  });
}
