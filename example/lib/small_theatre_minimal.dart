import 'package:flutter/material.dart';
import 'package:seatsio/seatsio.dart';

class SmallTheatreMinimal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Small Theatre - Minimal Config")),
        body: SeatsioSeatingChart(
          config: SeatingChartConfig.init().rebuild((b) => b
            ..workspaceKey = "publicDemoKey"
            ..event = "smallTheatreEvent2"
            ..region = SeatsioRegion.eu),
        ));
  }
}
