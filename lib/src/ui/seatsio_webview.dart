import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:seatsio/src/ui/seatsio_web_view_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';

typedef void SeatsioWebViewCreatedCallback(SeatsioWebViewController controller);

class SeatsioWebView extends StatefulWidget {
  final SeatsioWebViewCreatedCallback? _onWebViewCreated;
  final Set<Factory<OneSequenceGestureRecognizer>> _gestureRecognizers;

  const SeatsioWebView({
    super.key,
    SeatsioWebViewCreatedCallback? onWebViewCreated,
    Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers = const <Factory<OneSequenceGestureRecognizer>>{},
  })  : this._onWebViewCreated = onWebViewCreated,
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
    _webViewController = WebViewController()..setJavaScriptMode(JavaScriptMode.unrestricted);
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
