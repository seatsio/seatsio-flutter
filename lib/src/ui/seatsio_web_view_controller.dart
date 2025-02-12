import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../assets/seatsio_html.dart';
import '../models/seating_chart_config.dart';
import '../util/seatsio_js_bridge.dart';

typedef void SeatsioWebViewCreatedCallback(SeatsioWebViewController controller);

class SeatsioWebViewController {
  SeatsioWebViewController({
    required WebViewController webViewController,
  }) : this._webViewController = webViewController;

  WebViewController _webViewController;

  SeatingChartConfig? _chartConfig;

  void reload(SeatingChartConfig? newChartConfig) {
    if (newChartConfig != null) {
      _chartConfig = newChartConfig;
    }

    if (_chartConfig != null) {
      final url = _generateHtmlContent(_chartConfig!);
      _webViewController.loadRequest(Uri.parse(url));
    } else {
      debugPrint("[Seatsio]-> Not found seatsio chart config info.");
    }
  }

  String _generateHtmlContent(SeatingChartConfig chartConfig) {
    final chartConfigMap = chartConfig.toMap();

    String chartConfigJson = jsonEncode(chartConfigMap);
    chartConfigJson = '$chartConfigJson';

    final callbacks = SeatsioJsBridge.buildCallbacksConfiguration(chartConfig);
    chartConfigJson = chartConfigJson.substring(0, chartConfigJson.length - 1);
    callbacks.forEach((e) {
      chartConfigJson = "$chartConfigJson, $e";
    });
    chartConfigJson = "$chartConfigJson}";

    final htmlString = replaceConfigInHtml(chartConfig, chartConfigJson);

    final url = Uri.dataFromString(
      htmlString,
      mimeType: "text/html",
      encoding: utf8,
    );

    return url.toString();
  }

  String replaceConfigInHtml(SeatingChartConfig chartConfig, String chartConfigJson) {
    return seatsioHTML
        .replaceFirst("%region%", chartConfig.region.name)
        .replaceFirst("%configAsJs%", chartConfigJson);
  }

  Future<void> evaluateJavascript(String javascriptString) => _webViewController.runJavaScript(javascriptString);
}
