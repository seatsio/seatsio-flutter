# Seats.io Flutter SDK

## Introduction

seatsio-flutter allows rendering [seats.io](https://www.seats.io) seating charts inside a Flutter application.

## Usage

### Minimal

```dart
import 'package:flutter/material.dart';
import 'package:seatsio_flutter/seatsio_flutter.dart';

class SmallTheatreMinimal extends StatelessWidget {
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

## Credits

This SDK was inspired by https://github.com/SongJiaqiang/seatsio-flutter.
