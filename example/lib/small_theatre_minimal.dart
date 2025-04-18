import 'package:flutter/material.dart';
import 'package:seatsio_flutter/seatsio_flutter.dart';

class SmallTheatreMinimal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Small Theatre - Minimal Config")),
        body: SeatsioSeatingChart(
            config: SeatingChartConfig((b) => b
              ..workspaceKey = "publicDemoKey"
              ..event = "smallTheatreEvent2")));
  }
}
