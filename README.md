# Development

## regenerating .g.dart files
```
dart run build_runner build
```

## Running the example on macOs
```
cd example
open -a Simulator
flutter pub get
flutter run
```

## Running the example on an Android Emulator
```
cd example
emulator -list-avds
emulator -avd <avd_name>
flutter devices
flutter run -d <device_id>
```

## Running the example on flutter-Web
Not supported 
