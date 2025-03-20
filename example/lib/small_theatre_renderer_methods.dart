import 'package:flutter/material.dart';
import 'package:seatsio/seatsio.dart';

class SmallTheatreRendererMethods extends StatefulWidget {
  @override
  _SmallTheatreRendererMethodsState createState() => _SmallTheatreRendererMethodsState();
}

class _SmallTheatreRendererMethodsState extends State<SmallTheatreRendererMethods> {
  final GlobalKey<SeatsioSeatingChartState> _chart = GlobalKey<SeatsioSeatingChartState>();

  _resetView() {
    _chart.currentState?.resetView().then((_) => print("Reset view completed!"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Small Theatre - Renderer Methods")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: _resetView,
            child: Text("ResetView"),
          ),
          Expanded(
            child: SeatsioSeatingChart(
              key: _chart,
              config: SeatingChartConfig((b) => b
                ..workspaceKey = "publicDemoKey"
                ..event = "smallTheatreEvent2"),
            ),
          ),
        ],
      ),
    );
  }
}
