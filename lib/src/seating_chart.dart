import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:seatsio_flutter/seatsio_flutter.dart';
import 'package:seatsio_flutter/src/ui/seatsio_web_view_controller.dart';
import 'package:seatsio_flutter/src/ui/seatsio_webview.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SeatsioSeatingChart extends StatefulWidget {
  final SeatingChartConfig config;

  const SeatsioSeatingChart({
    Key? key,
    required this.config,
  }) : super(key: key);

  @override
  SeatsioSeatingChartState createState() => SeatsioSeatingChartState();
}

class SeatsioSeatingChartState extends State<SeatsioSeatingChart> {
  late SeatsioWebViewController _controller;
  final Map<String, Completer<void>> _pendingPromises = {};

  Future<void> resetView() async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<void> completer = Completer<void>();

    _pendingPromises[promiseId] = completer;

    await _controller.evaluateJavascript("""
      chart.resetView()
        .then(() => window.resetViewJsChannel.postMessage(JSON.stringify({ "id": "$promiseId", "status": "resolved" })))
        .catch(error => window.resetViewJsChannel.postMessage(JSON.stringify({ "id": "$promiseId", "status": "error", "message": error })));
    """);

    return completer.future;
  }

  Future<void> startNewSession() async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<void> completer = Completer<void>();

    _pendingPromises[promiseId] = completer;

    await _controller.evaluateJavascript("""
      chart.startNewSession()
        .then(() => window.startNewSessionJsChannel.postMessage(JSON.stringify({ "id": "$promiseId", "status": "resolved" })))
        .catch(error => window.startNewSessionJsChannel.postMessage(JSON.stringify({ "id": "$promiseId", "status": "error", "message": error })));
    """);

    return completer.future;
  }

  Future<List<SeatsioObject>> listSelectedObjects() async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<List<SeatsioObject>> completer = Completer();

    _pendingPromises[promiseId] = completer;

    await _controller.evaluateJavascript("""
    chart.listSelectedObjects()
      .then(objects => {
        window.listSelectedObjectsJsChannel.postMessage(JSON.stringify({
          \"id\": \"$promiseId\",
          \"status\": \"resolved\",
          \"objects\": objects
        }));
      })
      .catch(error => {
        window.listSelectedObjectsJsChannel.postMessage(JSON.stringify({
          \"id\": \"$promiseId\",
          \"status\": \"error\",
          \"message\": error
        }));
      });
  """);

    return completer.future;
  }

  Future<void> clearSelection() async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<void> completer = Completer<void>();

    _pendingPromises[promiseId] = completer;

    await _controller.evaluateJavascript("""
      chart.clearSelection()
        .then(() => window.clearSelectionJsChannel.postMessage(JSON.stringify({ "id": "$promiseId", "status": "resolved" })))
        .catch(error => window.clearSelectionJsChannel.postMessage(JSON.stringify({ "id": "$promiseId", "status": "error", "message": error })));
    """);

    return completer.future;
  }

  Future<void> trySelectObjects(List<String> objects) async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<void> completer = Completer<void>();

    _pendingPromises[promiseId] = completer;

    final String jsArray = jsonEncode(objects);

    await _controller.evaluateJavascript('''
    chart.trySelectObjects($jsArray)
      .then(() => window.trySelectObjectsJsChannel.postMessage(JSON.stringify({
        "id": "$promiseId\",
        \"status\": \"resolved\"
      })))
      .catch(error => window.trySelectObjectsJsChannel.postMessage(JSON.stringify({
        \"id\": \"$promiseId\",
        \"status\": \"error\",
        \"message\": error
      })));
  ''');

    return completer.future;
  }

  Future<void> doSelectObjects(List<String> objects) async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<void> completer = Completer<void>();

    _pendingPromises[promiseId] = completer;

    final String jsArray = jsonEncode(objects);

    await _controller.evaluateJavascript('''
    chart.doSelectObjects($jsArray)
      .then(() => window.doSelectObjectsJsChannel.postMessage(JSON.stringify({
        "id": "$promiseId\",
        \"status\": \"resolved\"
      })))
      .catch(error => window.doSelectObjectsJsChannel.postMessage(JSON.stringify({
        \"id\": \"$promiseId\",
        \"status\": \"error\",
        \"message\": error
      })));
  ''');

    return completer.future;
  }

  Future<void> deselectObjects(List<String> objects) async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<void> completer = Completer<void>();

    _pendingPromises[promiseId] = completer;

    final String jsArray = jsonEncode(objects);

    await _controller.evaluateJavascript('''
    chart.deselectObjects($jsArray)
      .then(() => window.deselectObjectsJsChannel.postMessage(JSON.stringify({
        "id": "$promiseId\",
        \"status\": \"resolved\"
      })))
      .catch(error => window.deselectObjectsJsChannel.postMessage(JSON.stringify({
        \"id\": \"$promiseId\",
        \"status\": \"error\",
        \"message\": error
      })));
  ''');

    return completer.future;
  }

  Future<void> setSpotlightObjects(List<String> objects) async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<void> completer = Completer<void>();

    _pendingPromises[promiseId] = completer;

    final String jsArray = jsonEncode(objects);

    await _controller.evaluateJavascript('''
    chart.setSpotlightObjects($jsArray)
      .then(() => window.setSpotlightObjectsJsChannel.postMessage(JSON.stringify({
        "id": "$promiseId\",
        \"status\": \"resolved\"
      })))
      .catch(error => window.setSpotlightObjectsJsChannel.postMessage(JSON.stringify({
        \"id\": \"$promiseId\",
        \"status\": \"error\",
        \"message\": error
      })));
  ''');

    return completer.future;
  }

  Future<void> setSpotlightOnSelection() async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<void> completer = Completer<void>();

    _pendingPromises[promiseId] = completer;

    await _controller.evaluateJavascript('''
    chart.setSpotlightOnSelection()
      .then(() => window.setSpotlightOnSelectionJsChannel.postMessage(JSON.stringify({
        "id": "$promiseId\",
        \"status\": \"resolved\"
      })))
      .catch(error => window.setSpotlightOnSelectionJsChannel.postMessage(JSON.stringify({
        \"id\": \"$promiseId\",
        \"status\": \"error\",
        \"message\": error
      })));
  ''');

    return completer.future;
  }

  Future<void> clearSpotlightObjects() async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<void> completer = Completer<void>();

    _pendingPromises[promiseId] = completer;

    await _controller.evaluateJavascript('''
    chart.clearSpotlightObjects()
      .then(() => window.clearSpotlightObjectsJsChannel.postMessage(JSON.stringify({
        "id": "$promiseId\",
        \"status\": \"resolved\"
      })))
      .catch(error => window.clearSpotlightObjectsJsChannel.postMessage(JSON.stringify({
        \"id\": \"$promiseId\",
        \"status\": \"error\",
        \"message\": error
      })));
  ''');

    return completer.future;
  }

  Future<void> selectCategories(List<String> categoryKeys) async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<void> completer = Completer<void>();

    _pendingPromises[promiseId] = completer;

    final String jsArray = jsonEncode(categoryKeys);

    await _controller.evaluateJavascript('''
    chart.selectCategories($jsArray)
      .then(() => window.selectCategoriesJsChannel.postMessage(JSON.stringify({
        "id": "$promiseId\",
        \"status\": \"resolved\"
      })))
      .catch(error => window.selectCategoriesJsChannel.postMessage(JSON.stringify({
        \"id\": \"$promiseId\",
        \"status\": \"error\",
        \"message\": error
      })));
  ''');

    return completer.future;
  }

  Future<void> deselectCategories(List<String> categoryKeys) async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<void> completer = Completer<void>();

    _pendingPromises[promiseId] = completer;

    final String jsArray = jsonEncode(categoryKeys);

    await _controller.evaluateJavascript('''
    chart.deselectCategories($jsArray)
      .then(() => window.deselectCategoriesJsChannel.postMessage(JSON.stringify({
        "id": "$promiseId\",
        \"status\": \"resolved\"
      })))
      .catch(error => window.deselectCategoriesJsChannel.postMessage(JSON.stringify({
        \"id\": \"$promiseId\",
        \"status\": \"error\",
        \"message\": error
      })));
  ''');

    return completer.future;
  }

  Future<void> changeConfig(SeatingChartConfigChange configChange) async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<void> completer = Completer<void>();

    _pendingPromises[promiseId] = completer;

    final String jsArray = jsonEncode(configChange.toJson());

    await _controller.evaluateJavascript('''
    chart.changeConfig($jsArray)
      .then(() => window.changeConfigJsChannel.postMessage(JSON.stringify({
        "id": "$promiseId\",
        \"status\": \"resolved\"
      })))
      .catch(error => window.changeConfigJsChannel.postMessage(JSON.stringify({
        \"id\": \"$promiseId\",
        \"status\": \"error\",
        \"message\": error
      })));
  ''');

    return completer.future;
  }

  Future<SeatsioObject> findObject(String objectLabel) async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<SeatsioObject> completer = Completer();

    _pendingPromises[promiseId] = completer;

    final String objectLabelString = jsonEncode(objectLabel);

    await _controller.evaluateJavascript("""
    chart.findObject($objectLabelString)
      .then(object => {
        window.findObjectJsChannel.postMessage(JSON.stringify({
          \"id\": \"$promiseId\",
          \"status\": \"resolved\",
          \"object\": object
        }));
      })
      .catch(error => {
        window.findObjectJsChannel.postMessage(JSON.stringify({
          \"id\": \"$promiseId\",
          \"status\": \"error\",
          \"message\": error
        }));
      });
  """);

    return completer.future;
  }

  Future<List<SeatsioCategory>> listCategories() async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<List<SeatsioCategory>> completer = Completer();

    _pendingPromises[promiseId] = completer;

    await _controller.evaluateJavascript("""
    chart.listCategories()
      .then(categories => {
        window.listCategoriesJsChannel.postMessage(JSON.stringify({
          \"id\": \"$promiseId\",
          \"status\": \"resolved\",
          \"categories\": categories
        }));
      })
      .catch(error => {
        window.listCategoriesJsChannel.postMessage(JSON.stringify({
          \"id\": \"$promiseId\",
          \"status\": \"error\",
          \"message\": error
        }));
      });
  """);

    return completer.future;
  }

  Future<dynamic> getReportBySelectability() async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<dynamic> completer = Completer();

    _pendingPromises[promiseId] = completer;

    await _controller.evaluateJavascript("""
    chart.getReportBySelectability()
      .then(report => {
        window.getReportBySelectabilityJsChannel.postMessage(JSON.stringify({
          \"id\": \"$promiseId\",
          \"status\": \"resolved\",
          \"report\": report
        }));
      })
      .catch(error => {
        window.getReportBySelectabilityJsChannel.postMessage(JSON.stringify({
          \"id\": \"$promiseId\",
          \"status\": \"error\",
          \"message\": error
        }));
      });
  """);

    return completer.future;
  }

  Future<void> zoomToObjects(List<String> objects) async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<void> completer = Completer<void>();

    _pendingPromises[promiseId] = completer;

    final String jsArray = jsonEncode(objects);

    await _controller.evaluateJavascript('''
    chart.zoomToObjects($jsArray)
      .then(() => window.zoomToObjectsJsChannel.postMessage(JSON.stringify({
        "id": "$promiseId\",
        \"status\": \"resolved\"
      })))
      .catch(error => window.zoomToObjectsJsChannel.postMessage(JSON.stringify({
        \"id\": \"$promiseId\",
        \"status\": \"error\",
        \"message\": error
      })));
  ''');

    return completer.future;
  }

  Future<void> zoomToSelectedObjects() async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<void> completer = Completer<void>();

    _pendingPromises[promiseId] = completer;

    await _controller.evaluateJavascript("""
      chart.zoomToSelectedObjects()
        .then(() => window.zoomToSelectedObjectsJsChannel.postMessage(JSON.stringify({ "id": "$promiseId", "status": "resolved" })))
        .catch(error => window.zoomToSelectedObjectsJsChannel.postMessage(JSON.stringify({ "id": "$promiseId", "status": "error", "message": error })));
    """);

    return completer.future;
  }

  Future<void> zoomToFilteredCategories() async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<void> completer = Completer<void>();

    _pendingPromises[promiseId] = completer;

    await _controller.evaluateJavascript("""
      chart.zoomToFilteredCategories()
        .then(() => window.zoomToFilteredCategoriesJsChannel.postMessage(JSON.stringify({ "id": "$promiseId", "status": "resolved" })))
        .catch(error => window.zoomToFilteredCategoriesJsChannel.postMessage(JSON.stringify({ "id": "$promiseId", "status": "error", "message": error })));
    """);

    return completer.future;
  }

  Future<void> zoomToSection(String section) async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<void> completer = Completer<void>();

    _pendingPromises[promiseId] = completer;

    final String jsonSection = jsonEncode(section);

    await _controller.evaluateJavascript("""
      chart.zoomToSection($jsonSection)
        .then(() => window.zoomToSectionJsChannel.postMessage(JSON.stringify({ "id": "$promiseId", "status": "resolved" })))
        .catch(error => window.zoomToSectionJsChannel.postMessage(JSON.stringify({ "id": "$promiseId", "status": "error", "message": error })));
    """);

    return completer.future;
  }

  Future<void> goToFloor(String floor) async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<void> completer = Completer<void>();

    _pendingPromises[promiseId] = completer;

    final String jsFloor = jsonEncode(floor);

    await _controller.evaluateJavascript('''
    chart.goToFloor($jsFloor)
      .then(() => window.goToFloorJsChannel.postMessage(JSON.stringify({
        "id": "$promiseId\",
        \"status\": \"resolved\"
      })))
      .catch(error => window.goToFloorJsChannel.postMessage(JSON.stringify({
        \"id\": \"$promiseId\",
        \"status\": \"error\",
        \"message\": error
      })));
  ''');

    return completer.future;
  }

  Future<void> goToAllFloorsView() async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<void> completer = Completer<void>();

    _pendingPromises[promiseId] = completer;

    await _controller.evaluateJavascript('''
    chart.goToAllFloorsView()
      .then(() => window.goToAllFloorsViewJsChannel.postMessage(JSON.stringify({
        "id": "$promiseId\",
        \"status\": \"resolved\"
      })))
      .catch(error => window.goToAllFloorsViewJsChannel.postMessage(JSON.stringify({
        \"id\": \"$promiseId\",
        \"status\": \"error\",
        \"message\": error
      })));
  ''');

    return completer.future;
  }

  void _handleVoidPromiseCompleted(JavaScriptMessage message) {
    final Map<String, dynamic> promiseResult = jsonDecode(message.message);
    final completer = _pendingPromises.remove(promiseResult["id"]);
    if (completer != null) {
      if (promiseResult["status"] == "resolved") {
        completer.complete();
      } else {
        completer
            .completeError("Error resetting view: ${promiseResult["message"]}");
      }
    }
  }

  void _handleListSelectedObjectsCompleted(JavaScriptMessage message) {
    final Map<String, dynamic> data = jsonDecode(message.message);
    final String promiseId = data["id"];
    final String status = data["status"];

    final completer = _pendingPromises.remove(promiseId)
        as Completer<List<SeatsioObject>>?;
    if (completer != null) {
      if (status == "resolved") {
        var objectsData = data["objects"] as List<dynamic>;
        final objects = objectsData
            .map((obj) => SeatsioObject.fromJson(obj))
            .toList();
        completer.complete(objects);
      } else {
        completer.completeError(
            "Error listing selected objects: ${data["message"]}");
      }
    }
  }

  void _handleListCategoriesCompleted(JavaScriptMessage message) {
    final Map<String, dynamic> data = jsonDecode(message.message);
    final String promiseId = data["id"];
    final String status = data["status"];

    final completer = _pendingPromises.remove(promiseId)
        as Completer<List<SeatsioCategory>>?;
    if (completer != null) {
      if (status == "resolved") {
        var categoriesData = data["categories"] as List<dynamic>;
        final categories = categoriesData
            .map((obj) => SeatsioCategory.fromJson(obj))
            .toList();
        completer.complete(categories);
      } else {
        completer.completeError(
            "Error listing categories: ${data["message"]}");
      }
    }
  }

  void _handleGetReportBySelectabilityCompleted(JavaScriptMessage message) {
    final Map<String, dynamic> data = jsonDecode(message.message);
    final String promiseId = data["id"];
    final String status = data["status"];

    final completer = _pendingPromises.remove(promiseId)
        as Completer<dynamic>?;
    if (completer != null) {
      if (status == "resolved") {
        var report = data["report"] as dynamic;
        completer.complete(report);
      } else {
        completer.completeError(
            "Error getting report by selectability: ${data["message"]}");
      }
    }
  }

  void _handleFindObjectCompleted(JavaScriptMessage message) {
    final Map<String, dynamic> data = jsonDecode(message.message);
    final String promiseId = data["id"];
    final String status = data["status"];

    final completer =
        _pendingPromises.remove(promiseId) as Completer<SeatsioObject>?;
    if (completer != null) {
      if (status == "resolved") {
        var objectData = data["object"] as dynamic;
        final object = SeatsioObject.fromJson(objectData);
        completer.complete(object);
      } else {
        completer.completeError(
            "Error listing selected objects: ${data["message"]}");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SeatsioWebView(
      onWebViewCreated: (controller) {
        _controller = controller;
        _controller.reload(widget.config);
      },
      config: widget.config,
      onVoidPromiseCompleted: _handleVoidPromiseCompleted,
      onListSelectedObjectsCompleted: _handleListSelectedObjectsCompleted,
      onFindObjectCompleted: _handleFindObjectCompleted,
      onListCategoriesCompleted: _handleListCategoriesCompleted,
      onGetReportBySelectabilityCompleted: _handleGetReportBySelectabilityCompleted
    );
  }
}
