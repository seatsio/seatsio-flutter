# Seats.io Flutter SDK

## Introduction

seatsio-flutter allows rendering [seats.io](https://www.seats.io) seating charts inside a Flutter application.

## Usage

### Installation

Add `seatsio_flutter` as a dependency in your pubspec.yaml file.

### Minimal

```dart
import 'package:flutter/material.dart';
import 'package:seatsio_flutter/seatsio_flutter.dart';

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Minimal example")),
        body: SeatsioSeatingChart(
            config: SeatingChartConfig((b) => b
              ..workspaceKey = "<your workspace key>"
              ..event = "<your event key>")));
  }
}
```

### Useing sessions

```dart
import 'package:flutter/material.dart';
import 'package:seatsio_flutter/seatsio_flutter.dart';

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final onSessionInitialized =
        (HoldToken token) => print("session initialized - ${token.token} - ${token.expiresAt}");
    
    return Scaffold(
        appBar: AppBar(title: Text("Minimal example")),
        body: SeatsioSeatingChart(
            config: SeatingChartConfig((b) => b
              ..workspaceKey = "<your workspace key>"
              ..event = "<your event key>"
              ..session = Session.cont
              ..onSessionInitialized = onSessionInitialized
            )));
  }
}
```

### `onObjectSelected` and `onObjectDeselected`

```dart
import 'package:flutter/material.dart';
import 'package:seatsio_flutter/seatsio_flutter.dart';

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final onObjectSelected = (SeatsioObject object, SelectedTicketType? ticketType) =>
        print("object selected - ${object.label}");
    final onObjectDeselected = (SeatsioObject object, SelectedTicketType? deselectedTicketType) =>
        print("object deselected - ${object.label}");
    
    return Scaffold(
        appBar: AppBar(title: Text("Minimal example")),
        body: SeatsioSeatingChart(
            config: SeatingChartConfig((b) => b
              ..workspaceKey = "<your workspace key>"
              ..event = "<your event key>"
              ..onObjectSelected = onObjectSelected
              ..onObjectDeselected = onObjectDeselected
            )));
  }
}
```

### Pricing

```dart
import 'package:flutter/material.dart';
import 'package:seatsio_flutter/seatsio_flutter.dart';

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final priceFormatter = (num price) => "€${price.toStringAsFixed(2)}";
    final pricing = [
      Pricing(
        category: "Stalls",
        ticketTypes: [
          TicketType(ticketType: "adult", price: 40),
          TicketType(ticketType: "child", price: 30, label: "For children"),
          TicketType(ticketType: "65+", price: 25, label: "For senior citizens"),
        ],
      ),
      Pricing(category: "Belcony", price: 50),
    ];
    
    return Scaffold(
        appBar: AppBar(title: Text("Minimal example")),
        body: SeatsioSeatingChart(
            config: SeatingChartConfig((b) => b
              ..workspaceKey = "<your workspace key>"
              ..event = "<your event key>"
              ..pricing = pricing
              ..priceFormatter = priceFormatter
            )));
  }
}
```

## Unsupported features

- Renderer prompts API
- Event manager

## Development

### regenerating .g.dart files
```
dart run build_runner build
```

### Running the example on macOS
```
cd example
open -a Simulator
flutter pub get
flutter run
```

### Running the example on an Android Emulator
```
cd example
emulator -list-avds
emulator -avd <avd_name>
flutter devices
flutter run -d <device_id>
```

### Running the example on flutter-Web
Not supported

## Releasing

1. Run https://github.com/seatsio/seatsio-flutter/actions/workflows/bumpVersion.yml
2. Run https://github.com/seatsio/seatsio-flutter/actions/workflows/publish.yml on the tag that was just created

## Credits

This SDK was inspired by https://github.com/SongJiaqiang/seatsio-flutter.
