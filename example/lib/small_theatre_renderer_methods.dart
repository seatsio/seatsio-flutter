import 'package:flutter/material.dart';
import 'package:seatsio/seatsio.dart';
class SmallTheatreRendererMethods extends StatefulWidget {
  @override
  _SmallTheatreRendererMethodsState createState() => _SmallTheatreRendererMethodsState();
}

class _SmallTheatreRendererMethodsState extends State<SmallTheatreRendererMethods> {
  final GlobalKey<SeatsioSeatingChartState> _chart = GlobalKey();

  String _selectedAction = 'resetView';

  final Map<String, Future<void> Function()> _actions = {};

  @override
  void initState() {
    super.initState();

    _actions.addAll({
      // 're-render': () =>
      'resetView': () => _chart.currentState?.resetView() ?? Future.value(),
      'startNewSession': () => _chart.currentState?.startNewSession() ?? Future.value(),
      // listSelectedObjects
      // clearSelection
      // trySelectObjects
      // doSelectObjects
      // deselectObjects
      // selectCategories
      // deselectCategories
      // pulse
      // unpulse
      // changeConfig
      // findObject
      // listCategories
      // zoomToObjects
      // zoomToSelectedObjects
      // zoomToFilteredCategories
      // zoomToSection
      // getReportBySelectability
      // setSpotlightObjects
      // setSpotlightOnSelection
      // clearSpotlightObjects


    });
  }

  void _runSelectedAction() {
    final selectedMethod = _actions[_selectedAction];
    if (selectedMethod != null) {
      selectedMethod().then((_) {
        print("Action $_selectedAction completed.");
      }).catchError((e) {
        print("Error in $_selectedAction: $e");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Small Theatre - Renderer Methods")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<String>(
              value: _selectedAction,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedAction = newValue!;
                });
              },
              items: _actions.keys
                  .map((String action) => DropdownMenuItem<String>(
                value: action,
                child: Text(action),
              ))
                  .toList(),
            ),
          ),
          ElevatedButton(
            onPressed: _runSelectedAction,
            child: Text("Run Action"),
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
