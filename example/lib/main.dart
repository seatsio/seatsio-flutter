import 'package:example/seatsio_demo_page.dart';
import 'package:example/small_theatre_minimal.dart';
import 'package:example/small_theatre_maximal.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(SeatsioDemoApp());
}

class SeatsioDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seats.io Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SeatsioDemoHome(),
    );
  }
}

class SeatsioDemoHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Seats.io Examples')),
      body: ListView(
        children: [
          _exampleButton(context, 'Small Theatre - minimal config', (context) => SmallTheatreMinimal()),
          _exampleButton(context, 'Small Theatre - plenty of config', (context) => SmallTheatreMaximal()),
          _exampleButton(context, 'Playground', (context) => SmallTheatrePlayground(title: 'Playground')),
        ],
      ),
    );
  }

  Widget _exampleButton(BuildContext context, String title, WidgetBuilder demoBuilder) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: demoBuilder,
            ),
          );
        },
        child: Text(title),
      ),
    );
  }
}
