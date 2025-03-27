import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:seatsio/seatsio.dart';
import 'package:seatsio/src/ui/seatsio_web_view_controller.dart';
import 'package:seatsio/src/ui/seatsio_webview.dart';
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

  Future<List<SeatsioSelectedObject>> listSelectedObjects() async {
    final String promiseId = DateTime.now().millisecondsSinceEpoch.toString();
    final Completer<List<SeatsioSelectedObject>> completer = Completer();

    // Store the completer in a generic map; you can store typed completers if you prefer
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

  void _handlePromiseCompleted(JavaScriptMessage message) {
    final Map<String, dynamic> promiseResult = jsonDecode(message.message);
    final completer = _pendingPromises.remove(promiseResult["id"]);
    if (completer != null) {
      if (promiseResult["status"] == "resolved") {
        completer.complete();
      } else {
        completer.completeError("Error resetting view: ${promiseResult["message"]}");
      }
    }
  }

  void _handleListSelectedObjectsCompleted(JavaScriptMessage message) {
    final Map<String, dynamic> data = jsonDecode(message.message);
    final String promiseId = data["id"];
    final String status = data["status"];

    final completer = _pendingPromises.remove(promiseId) as Completer<List<SeatsioSelectedObject>>?;
    if (completer != null) {
      if (status == "resolved") {
        var objectsData = data["objects"] as List<dynamic>;
        final objects = objectsData.map((obj) => SeatsioSelectedObject.fromJson(obj)).toList();
        completer.complete(objects);
      } else {
        completer.completeError("Error listing selected objects: ${data["message"]}");
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
        onResetViewCompleted: _handlePromiseCompleted,
        onStartNewSessionCompleted: _handlePromiseCompleted,
        onListSelectedObjectsCompleted: _handleListSelectedObjectsCompleted);
  }
}
