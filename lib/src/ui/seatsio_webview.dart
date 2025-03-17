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
      ..addJavaScriptChannel("callbackChannel", onMessageReceived: (JavaScriptMessage message) {
        try {
          Map<String, dynamic> parsedMessage = jsonDecode(message.message);
          var messageType = parsedMessage["type"];
          if (messageType == "priceFormatterRequested" && this.widget._config.priceFormatter != null) {
            var formattedPrice = this.widget._config.priceFormatter?.call(parsedMessage["data"]["price"]);
            this
                ._seatsioController
                .evaluateJavascript('resolvePromise(${parsedMessage["data"]["promiseId"]}, "${formattedPrice}")');
          }
          if (messageType == "popoverInfoRequested" && this.widget._config.popoverInfo != null) {
            var object = SeatsioObject.fromJson(parsedMessage["data"]["object"]);
            var popoverInfo = this.widget._config.popoverInfo?.call(object);
            this
                ._seatsioController
                .evaluateJavascript('resolvePromise(${parsedMessage["data"]["promiseId"]}, "${popoverInfo}")');
          }
        } catch (e) {
          debugPrint("Error while processing message from WebView: $e");
        }
      })
      ..addJavaScriptChannel('onObjectSelectedJsChannel', onMessageReceived: onObjectSelected);

    _seatsioController = SeatsioWebViewController(webViewController: _webViewController);
    widget._onWebViewCreated?.call(_seatsioController);
  }

  void onObjectSelected(JavaScriptMessage message) {
    if (widget._config.onObjectSelected != null) {
      final Map<String, dynamic> data = jsonDecode(message.message);
      final SeatsioObject object = SeatsioObject(label: data["object"]["label"]);
      final SelectedTicketType? ticketType = SelectedTicketType.fromJson(data["ticketType"]);
      widget._config.onObjectSelected!(object, ticketType);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      controller: _webViewController,
      gestureRecognizers: widget._gestureRecognizers,
    );
  }
}
