import 'package:flutter/material.dart';
import 'package:seatsio_flutter/seatsio_flutter.dart';

class SmallTheatreRendererMethods extends StatefulWidget {
  @override
  _SmallTheatreRendererMethodsState createState() => _SmallTheatreRendererMethodsState();
}

class _SmallTheatreRendererMethodsState extends State<SmallTheatreRendererMethods> {
  final GlobalKey<SeatsioSeatingChartState> _chart = GlobalKey();

  String _selectedAction = 'resetView';

  final Map<String, Future<void>? Function()> _actions = {};

  final multiLevelPricing = [
    Pricing(
      category: 1,
      ticketTypes: [
        TicketType(ticketType: "adult", price: 30, originalPrice: 50),
        TicketType(ticketType: "child", price: 20, label: "For children"),
      ],
    ),
    Pricing(
      category: 2,
      ticketTypes: [
        TicketType(ticketType: "adult", price: 40),
        TicketType(ticketType: "child", price: 30, label: "For children"),
        TicketType(ticketType: "65+", price: 25, label: "For senior citizens"),
      ],
    ),
    Pricing(category: "3", price: 50),
  ];

  final simplePricing = [
    Pricing(category: 1, price: 30, originalPrice: 40),
    Pricing(category: "2", price: 40),
    Pricing(category: "3", price: 50),
  ];

  @override
  void initState() {
    super.initState();

    _actions.addAll({
      // 're-render': () =>
      'resetView': () => _chart.currentState?.resetView(),
      'startNewSession': () => _chart.currentState?.startNewSession(),
      'listSelectedObjects': () => this.printSelectedObjects(),
      'clearSelection': () => _chart.currentState?.clearSelection(),
      'trySelectObjects': () => _chart.currentState?.trySelectObjects(["A-12", "A-10"]),
      'doSelectObjects': () => _chart.currentState?.doSelectObjects(["A-12", "A-10"]),
      'deselectObjects': () => _chart.currentState?.deselectObjects(["A-12", "A-10"]),
      'selectCategories': () => _chart.currentState?.selectCategories(["1"]),
      'deselectCategories': () => _chart.currentState?.deselectCategories(["1"]),
      'changeConfig': () => _chart.currentState?.changeConfig(SeatingChartConfigChange((b) => b
          // ..objectColor = "function(object, defaultColor, extraConfig) { return object.label.startsWith('A') ? 'green' : 'blue'; }"
          // ..objectLabel = "function(object, defaultLabel, extraConfig) { return object.label + ' (' + object.status + ')'; }")),
          // ..numberOfPlacesToSelect = 2
          // ..maxSelectedObjects = MaxSelectedObjects.total(4)
          // ..availableCategories = ["Stalls"]
          // ..unavailableCategories = ["Stalls"]
          // ..filteredCategories = ["Stalls"]
          ..pricing = simplePricing
          // ..channels = ["channel1", "channel2"]
          //..extraConfig = { "foo": "green" },
          )),
      'findObject': () => findAndPrintObject("A-12"),
      'listCategories': () => _chart.currentState?.listCategories().then((categories) {
        print("Categories:");
        for (var category in categories) {
          print("Category: ${category.key}");
        }
      }),
      'zoomToObjects': () => _chart.currentState?.zoomToObjects(["A-12", "A-10"]),
      'zoomToSelectedObjects': () => _chart.currentState?.zoomToSelectedObjects(),
      'zoomToFilteredCategories': () => _chart.currentState?.zoomToFilteredCategories(),
      'zoomToSection': () => _chart.currentState?.zoomToSection("West Choir").then((_) {
        print("Zoomed to section.");
      }),
      'getReportBySelectability': () => _chart.currentState?.getReportBySelectability().then((report) {
          print("Report: ${report}");
      }),
      'setSpotlightObjects': () => _chart.currentState?.setSpotlightObjects(["A-12", "A-10"]),
      'setSpotlightOnSelection': () => _chart.currentState?.setSpotlightOnSelection(),
      'clearSpotlightObjects': () => _chart.currentState?.clearSpotlightObjects(),
      'goToFloor': () => _chart.currentState?.goToFloor('2'),
      'goToAllFloorsView': () => _chart.currentState?.goToAllFloorsView()
    });
  }

  void _runSelectedAction() {
    final selectedMethod = _actions[_selectedAction];
    if (selectedMethod != null) {
      selectedMethod()?.then((_) {
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
                ..event = "smallTheatreEvent2"
                ..pricing = multiLevelPricing),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> printSelectedObjects() async {
    try {
      final objects = await _chart.currentState?.listSelectedObjects();
      if (objects != null) {
        print("Selected objects:");
        for (var obj in objects) {
          print("Label: ${obj.label}, Status: ${obj.status}, Category: ${obj.category?.label}");
        }
      }
    } catch (e) {
      print("Error fetching selected objects: $e");
    }
  }

  Future<void> findAndPrintObject(String objectLabel) async {
    try {
      final object = await _chart.currentState?.findObject(objectLabel);
      if (object != null) {
        print("Found object:");
        print("Label: ${object.label}");
      }
    } catch (e) {
      print("Error fetching object: $e");
    }

  }
}
