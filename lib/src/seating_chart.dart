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

  void _handleResetViewCompleted(JavaScriptMessage message) {
    final Map<String, dynamic> data = jsonDecode(message.message);
    final String promiseId = data["id"];
    final String status = data["status"];

    final completer = _pendingPromises.remove(promiseId);
    if (completer != null) {
      if (status == "resolved") {
        completer.complete();
      } else {
        completer.completeError("Error resetting view: ${data["message"]}");
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
        onResetViewCompleted: _handleResetViewCompleted);
  }
}
