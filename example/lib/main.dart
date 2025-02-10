import 'package:example/seatsio_demo_page.dart';
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
      home: SeatsioDemoPage(),
    );
  }
}
