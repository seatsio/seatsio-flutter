import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:seatsio/seatsio_old.dart';

class OldLibraryCodePlayground extends StatefulWidget {
  final title;

  OldLibraryCodePlayground({Key? key, required this.title}) : super(key: key);

  @override
  _OldLibraryCodePlaygroundState createState() => _OldLibraryCodePlaygroundState();
}

class _OldLibraryCodePlaygroundState extends State<OldLibraryCodePlayground> {
  SeatsioWebViewController? _seatsioController;
  final List<String> selectedObjectLabels = ['Try to click a seat'];

  late final SeatingChartConfig _chartConfig;

  @override
  void initState() {
    super.initState();

    _chartConfig = SeatingChartConfig.init().rebuild((b) => b
      ..workspaceKey = "publicDemoKey"
      ..event = "smallTheatreEvent2"
      ..pricing = ListBuilder<PricingForCategory>([
        PricingForCategory(
              (b) => b
            ..category = "expensive"
            ..price = 100,
        ),
      ])
      ..enableHoldSucceededCallback = true
      ..enableHoldFailedCallback = true
      ..enableHoldTokenExpiredCallback = true
      ..enableSessionInitializedCallback = true
      ..enableObjectClickedCallback =
      false // Set this to false if you want to have the objectToolTip to be shown
      ..session = "continue");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
              onChartRendered: (_) =>
                  print("[Seatsio]->[example]-> onChartRendered"),
              onChartRenderingFailed: () =>
                  print("[Seatsio]->[example]-> onChartRenderingFailed"),
              onObjectSelected: (object, type) {
                print(
                    "[Seatsio]->[example]-> onObjectSelected, label: ${object.label}");
                _selectSeat(object);
              },
              onObjectDeselected: (object, type) {
                print(
                    "[Seatsio]->[example]-> onObjectDeselected, label: ${object.label}");
                _deselectSeat(object);
              },
              onHoldSucceeded: (objects, ticketTypes) {
                print(
                    "[Seatsio]->[example]-> onObjectSelected, objects: $objects | ticket types: $ticketTypes");
              },
              onHoldTokenExpired: () {
                print("[Seatsio]->[example]-> onHoldTokenExpired");
              },
              onSessionInitialized: (holdToken) {
                print(
                    "[Seatsio]->[example]-> onSessionInitialized, holdToken: $holdToken");
              },
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: selectedObjectLabels.length,
              itemBuilder: (_, index) => Text(selectedObjectLabels[index]),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadSeatsio,
        child: Icon(Icons.refresh),
      ),
    );
  }

  void _selectSeat(SeatsioObject object) {
    setState(() {
      selectedObjectLabels.add(object.label);
    });
  }

  void _deselectSeat(SeatsioObject object) {
    if (selectedObjectLabels.contains(object.label)) {
      setState(() {
        selectedObjectLabels.remove(object.label);
      });
    }
  }

  void _loadSeatsio() {
    final newChartConfig = _chartConfig.rebuild((b) => b..showLegend = false);
    _seatsioController?.reload(newChartConfig);
  }
}
