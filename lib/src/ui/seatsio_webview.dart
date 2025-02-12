import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:seatsio/src/ui/seatsio_web_view_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';

typedef void SeatsioWebViewCreatedCallback(SeatsioWebViewController controller);

class SeatsioWebView extends StatefulWidget {
  const SeatsioWebView({
    super.key,
    String? initialUrl,
    SeatsioWebViewCreatedCallback? onWebViewCreated,
    Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers = const <Factory<OneSequenceGestureRecognizer>>{},
  })  : this._initialUrl = initialUrl,
        this._onWebViewCreated = onWebViewCreated,
        this._gestureRecognizers = gestureRecognizers;

  final String? _initialUrl;

  final SeatsioWebViewCreatedCallback? _onWebViewCreated;

  final Set<Factory<OneSequenceGestureRecognizer>> _gestureRecognizers;

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
      ..addJavaScriptChannel('FlutterJsBridge', onMessageReceived: flutterJsBridge);
    if (widget._initialUrl != null) {
      _webViewController.loadRequest(Uri.parse(widget._initialUrl!));
    }
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

  void flutterJsBridge(JavaScriptMessage message) {
    // TODO ??
  }
}
