import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../assets/seatsio_html.dart';
import '../models/seating_chart_config.dart';
import '../util/seatsio_js_bridge.dart';
import '../util/serializers.dart';

typedef void SeatsioWebViewCreatedCallback(SeatsioWebViewController controller);

class SeatsioWebViewController {
  WebViewController _webViewController;
  bool _debug = false;

  SeatsioWebViewController({
    required WebViewController webViewController,
  }) : this._webViewController = webViewController;

  void reload(SeatingChartConfig newChartConfig) {
    final dataUri = _generateHtmlContentAsDataUri(newChartConfig);
    _webViewController.loadRequest(Uri.parse(dataUri));
  }

  String _generateHtmlContentAsDataUri(SeatingChartConfig chartConfig) {
    final String configJson = jsonEncode(serializers.serialize(chartConfig));
    final List<String> callbackEntries = SeatsioJsBridge.buildCallbacksConfiguration(chartConfig);
    final String callbacksJson = callbackEntries.isNotEmpty ? ', ${callbackEntries.join(", ")}' : '';
    final String fullConfigJson = _injectCallbacksJsonIntoConfigJson(configJson, callbacksJson);
    if (_debug) {
      debugPrint(fullConfigJson);
    }
    final String htmlString = _injectConfigInHtml(chartConfig, fullConfigJson);
    return _convertToDataUri(htmlString);
  }

  String _injectCallbacksJsonIntoConfigJson(String configJson, String callbacksJson) {
    var configWithoutLastCurlyBrace = configJson.substring(0, configJson.length - 1);
    final fullConfigJson = configWithoutLastCurlyBrace + callbacksJson + "}";
    return fullConfigJson;
  }

  String _convertToDataUri(String htmlString) {
    return Uri.dataFromString(
      htmlString,
      mimeType: "text/html",
      encoding: utf8,
    ).toString();
  }

  String _injectConfigInHtml(SeatingChartConfig chartConfig, String chartConfigJson) {
    return seatsioHTML.replaceFirst("%region%", chartConfig.region.name).replaceFirst("%configAsJs%", chartConfigJson);
  }

  Future<void> evaluateJavascript(String javascriptString) => _webViewController.runJavaScript(javascriptString);
}
