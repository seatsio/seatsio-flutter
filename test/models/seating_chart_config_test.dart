import 'package:built_value/built_value.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:seatsio/seatsio.dart';

void main() {
  group('SeatingChartConfig constructor', () {
    test('should correctly initialize with required fields', () {
      final config = SeatingChartConfig((b) => b
        ..workspaceKey = "someKey"
        ..event = "someEvent");

      expect(config.workspaceKey, "someKey");
      expect(config.event, "someEvent");
      expect(config.region, Region.eu);
    });

    test('should allow setting a custom region', () {
      final config = SeatingChartConfig((b) => b
        ..workspaceKey = "someKey"
        ..event = "someEvent"
        ..region = Region.na);
      expect(config.region, Region.na);
    });

    test('should throw an error if workspaceKey is missing', () {
      try {
        SeatingChartConfig((b) => b..event = "anEvent");
        fail("Expected a BuiltValueNullFieldError");
      } catch (e) {
        expect(e, isA<BuiltValueNullFieldError>());
        expect((e as BuiltValueNullFieldError).field, 'workspaceKey');
      }
    });

    test('should throw an error if neither event nor events is provided', () {
      expect(
        () => SeatingChartConfig((b) => b..workspaceKey = "aKey"),
        throwsA(
          predicate(
              (e) => e is ArgumentError && e.message == 'Either "event" or "events" must be provided, but not both.'),
        ),
      );
    });

    test('should throw an error if both event and events are provided', () {
      expect(
        () => SeatingChartConfig((b) => b
          ..workspaceKey = "aKey"
          ..event = "anEvent"
          ..events = ["event1", "event2"]),
        throwsA(
          predicate(
              (e) => e is ArgumentError && e.message == 'Either "event" or "events" must be provided, but not both.'),
        ),
      );
    });
  });
}
