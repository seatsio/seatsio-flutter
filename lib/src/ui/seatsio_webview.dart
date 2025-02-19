import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:seatsio/seatsio.dart';
import 'package:seatsio/src/ui/seatsio_web_view_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';

typedef void SeatsioWebViewCreatedCallback(SeatsioWebViewController controller);

class SeatsioWebView extends StatefulWidget {
  final SeatsioWebViewCreatedCallback? _onWebViewCreated;
  final SeatingChartConfig _config;
  final Set<Factory<OneSequenceGestureRecognizer>> _gestureRecognizers;

  const SeatsioWebView({
    super.key,
    SeatsioWebViewCreatedCallback? onWebViewCreated,
    required SeatingChartConfig config,
    Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers = const <Factory<OneSequenceGestureRecognizer>>{},
  })  : this._onWebViewCreated = onWebViewCreated,
        this._config = config,
        this._gestureRecognizers = gestureRecognizers;

  @override
  State<StatefulWidget> createState() => _SeatsioWebViewState();
}

class _SeatsioWebViewState extends State<SeatsioWebView> {
  late final SeatsioWebViewController _seatsioController;
  late final WebViewController _webViewController;

  @override
  void initState() {
    super.initState();
    _webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..addJavaScriptChannel(
        'FlutterErrorLogger',
        onMessageReceived: (JavaScriptMessage message) {
          debugPrint("[WebView error] ${message.message}");
        },
      )
      ..addJavaScriptChannel(
        'FlutterWarningLogger',
        onMessageReceived: (JavaScriptMessage message) {
          debugPrint("[WebView warning] ${message.message}");
        },
      )
      ..addJavaScriptChannel(
        'FlutterLogger',
        onMessageReceived: (JavaScriptMessage message) {
          debugPrint("[WebView] ${message.message}");
        },
      )
      ..addJavaScriptChannel(
          "FlutterCallback",
          onMessageReceived: (JavaScriptMessage message) {
            try {
              Map<String, dynamic> parsedMessage = jsonDecode(message.message);
              if (this.widget._config.priceFormatter != null) {
                var formattedPrice = this.widget._config.priceFormatter?.call(parsedMessage["data"]["price"]);
                this._seatsioController.evaluateJavascript('resolvePromise(${parsedMessage["data"]["promiseId"]}, "${formattedPrice}")');
              }
            } catch (e) {
              debugPrint("Error while processing message from WebView: $e");
            }
          }
      );

    _seatsioController = SeatsioWebViewController(webViewController: _webViewController);
    widget._onWebViewCreated?.call(_seatsioController);
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      controller: _webViewController,
      gestureRecognizers: widget._gestureRecognizers,
    );
  }
}
