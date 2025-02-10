import 'package:flutter/material.dart';
import 'package:seatsio/seatsio.dart';

class SmallTheatreMinimal extends StatefulWidget {
  @override
  _SmallTheatreMinimalState createState() => _SmallTheatreMinimalState();
}

class _SmallTheatreMinimalState extends State<SmallTheatreMinimal> {
  SeatsioWebViewController? _seatsioController;

  late final SeatingChartConfig _chartConfig;

  @override
  void initState() {
    super.initState();

    _chartConfig = SeatingChartConfig.init().rebuild((b) => b
      ..workspaceKey = "publicDemoKey"
      ..eventKey = "smallTheatreEvent2"
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Small theatre - minimal config"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 400,
            child: SeatsioWebView(
              onWebViewCreated: (controller) {
                print("[Seatsio]->[example]-> onWebViewCreated");
                _seatsioController = controller;
                _loadSeatsio();
              },
            ),
          ),
        ],
      ),
    );
  }

  void _loadSeatsio() {
    _seatsioController?.reload(_chartConfig);
  }
}
