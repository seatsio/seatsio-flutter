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

  final void Function(JavaScriptMessage) onVoidPromiseCompleted;
  final void Function(JavaScriptMessage) onListSelectedObjectsCompleted;
  final void Function(JavaScriptMessage) onFindObjectCompleted;
  final void Function(JavaScriptMessage) onListCategoriesCompleted;
  final void Function(JavaScriptMessage) onGetReportBySelectabilityCompleted;

  const SeatsioWebView({
    super.key,
    SeatsioWebViewCreatedCallback? onWebViewCreated,
    required SeatingChartConfig config,
    Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers = const <Factory<OneSequenceGestureRecognizer>>{},
    required this.onVoidPromiseCompleted,
    required this.onListSelectedObjectsCompleted,
    required this.onFindObjectCompleted,
    required this.onListCategoriesCompleted,
    required this.onGetReportBySelectabilityCompleted
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
            var object = SeatsioSelectedObject.fromJson(parsedMessage["data"]["object"]);
            var popoverInfo = this.widget._config.popoverInfo?.call(object);
            this
                ._seatsioController
                .evaluateJavascript('resolvePromise(${parsedMessage["data"]["promiseId"]}, "${popoverInfo}")');
          }
        } catch (e) {
          debugPrint("Error while processing message from WebView: $e");
        }
      })
      ..addJavaScriptChannel('onChartRenderedJsChannel', onMessageReceived: onChartRendered)
      ..addJavaScriptChannel('onChartRenderingFailedJsChannel', onMessageReceived: onChartRenderingFailed)
      ..addJavaScriptChannel('onChartRerenderingStartedJsChannel', onMessageReceived: onChartRerenderingStarted)
      ..addJavaScriptChannel('onObjectClickedJsChannel', onMessageReceived: onObjectClicked)
      ..addJavaScriptChannel('onObjectSelectedJsChannel', onMessageReceived: onObjectSelected)
      ..addJavaScriptChannel('onObjectDeselectedJsChannel', onMessageReceived: onObjectDeselected)
      ..addJavaScriptChannel('onObjectStatusChangedJsChannel', onMessageReceived: onObjectStatusChanged)
      ..addJavaScriptChannel('onObjectBookedJsChannel', onMessageReceived: onObjectBooked)
      ..addJavaScriptChannel('onSessionInitializedJsChannel', onMessageReceived: onSessionInitialized)
      ..addJavaScriptChannel('onHoldCallsInProgressJsChannel', onMessageReceived: onHoldCallsInProgress)
      ..addJavaScriptChannel('onHoldCallsCompleteJsChannel', onMessageReceived: onHoldCallsComplete)
      ..addJavaScriptChannel('onHoldSucceededJsChannel', onMessageReceived: onHoldSucceeded)
      ..addJavaScriptChannel('onHoldFailedJsChannel', onMessageReceived: onHoldFailed)
      ..addJavaScriptChannel('onHoldTokenExpiredJsChannel', onMessageReceived: onHoldTokenExpired)
      ..addJavaScriptChannel('onReleaseHoldSucceededJsChannel', onMessageReceived: onReleaseHoldSucceeded)
      ..addJavaScriptChannel('onReleaseHoldFailedJsChannel', onMessageReceived: onReleaseHoldFailed)
      ..addJavaScriptChannel('onSelectionValidJsChannel', onMessageReceived: onSelectionValid)
      ..addJavaScriptChannel('onSelectionInvalidJsChannel', onMessageReceived: onSelectionInvalid)
      ..addJavaScriptChannel('onFilteredCategoriesChangedJsChannel', onMessageReceived: onFilteredCategoriesChanged)
      ..addJavaScriptChannel('onFloorChangedJsChannel', onMessageReceived: onFloorChanged)
      // renderer methods
      ..addJavaScriptChannel("resetViewJsChannel", onMessageReceived: widget.onVoidPromiseCompleted)
      ..addJavaScriptChannel("startNewSessionJsChannel", onMessageReceived: widget.onVoidPromiseCompleted)
      ..addJavaScriptChannel("listSelectedObjectsJsChannel", onMessageReceived: widget.onListSelectedObjectsCompleted)
      ..addJavaScriptChannel("clearSelectionJsChannel", onMessageReceived: widget.onVoidPromiseCompleted)
      ..addJavaScriptChannel("trySelectObjectsJsChannel", onMessageReceived: widget.onVoidPromiseCompleted)
      ..addJavaScriptChannel("doSelectObjectsJsChannel", onMessageReceived: widget.onVoidPromiseCompleted)
      ..addJavaScriptChannel("deselectObjectsJsChannel", onMessageReceived: widget.onVoidPromiseCompleted)
      ..addJavaScriptChannel("setSpotlightObjectsJsChannel", onMessageReceived: widget.onVoidPromiseCompleted)
      ..addJavaScriptChannel("setSpotlightOnSelectionJsChannel", onMessageReceived: widget.onVoidPromiseCompleted)
      ..addJavaScriptChannel("clearSpotlightObjectsJsChannel", onMessageReceived: widget.onVoidPromiseCompleted)
      ..addJavaScriptChannel("selectCategoriesJsChannel", onMessageReceived: widget.onVoidPromiseCompleted)
      ..addJavaScriptChannel("deselectCategoriesJsChannel", onMessageReceived: widget.onVoidPromiseCompleted)
      ..addJavaScriptChannel("changeConfigJsChannel", onMessageReceived: widget.onVoidPromiseCompleted)
      ..addJavaScriptChannel("findObjectJsChannel", onMessageReceived: widget.onFindObjectCompleted)
      ..addJavaScriptChannel("listCategoriesJsChannel", onMessageReceived: widget.onListCategoriesCompleted)
      ..addJavaScriptChannel("getReportBySelectabilityJsChannel", onMessageReceived: widget.onGetReportBySelectabilityCompleted)
      ..addJavaScriptChannel("zoomToObjectsJsChannel", onMessageReceived: widget.onVoidPromiseCompleted)
      ..addJavaScriptChannel("zoomToSelectedObjectsJsChannel", onMessageReceived: widget.onVoidPromiseCompleted)
      ..addJavaScriptChannel("zoomToFilteredCategoriesJsChannel", onMessageReceived: widget.onVoidPromiseCompleted)
      ..addJavaScriptChannel("zoomToSectionJsChannel", onMessageReceived: widget.onVoidPromiseCompleted)
      ..addJavaScriptChannel("goToAllFloorsViewJsChannel", onMessageReceived: widget.onVoidPromiseCompleted)
      ..addJavaScriptChannel("goToFloorJsChannel", onMessageReceived: widget.onVoidPromiseCompleted);

    _seatsioController = SeatsioWebViewController(webViewController: _webViewController);
    widget._onWebViewCreated?.call(_seatsioController);
  }

  void onChartRendered(JavaScriptMessage message) {
    if (widget._config.onChartRendered != null) {
      widget._config.onChartRendered!();
    }
  }

  void onChartRenderingFailed(JavaScriptMessage message) {
    if (widget._config.onChartRenderingFailed != null) {
      widget._config.onChartRenderingFailed!();
    }
  }

  void onChartRerenderingStarted(JavaScriptMessage message) {
    if (widget._config.onChartRerenderingStarted != null) {
      widget._config.onChartRerenderingStarted!();
    }
  }

  void onObjectClicked(JavaScriptMessage message) {
    if (widget._config.onObjectClicked != null) {
      final Map<String, dynamic> data = jsonDecode(message.message);
      final SeatsioSelectedObject object = SeatsioSelectedObject(label: data["object"]["label"]);
      widget._config.onObjectClicked!(object);
    }
  }

  void onObjectSelected(JavaScriptMessage message) {
    if (widget._config.onObjectSelected != null) {
      final Map<String, dynamic> data = jsonDecode(message.message);
      final SeatsioSelectedObject object = SeatsioSelectedObject(label: data["object"]["label"]);
      final SelectedTicketType? ticketType = SelectedTicketType.fromJson(data["ticketType"]);
      widget._config.onObjectSelected!(object, ticketType);
    }
  }

  void onFloorChanged(JavaScriptMessage message) {
    if (widget._config.onFloorChanged != null) {
      final Map<String, dynamic> data = jsonDecode(message.message);
      final Floor? floor = Floor.fromJson(data["floor"]);
      widget._config.onFloorChanged!(floor);
    }
  }

  void onObjectDeselected(JavaScriptMessage message) {
    if (widget._config.onObjectDeselected != null) {
      final Map<String, dynamic> data = jsonDecode(message.message);
      final SeatsioSelectedObject object = SeatsioSelectedObject(label: data["object"]["label"]);
      final SelectedTicketType? ticketType = SelectedTicketType.fromJson(data["ticketType"]);
      widget._config.onObjectDeselected!(object, ticketType);
    }
  }

  void onObjectStatusChanged(JavaScriptMessage message) {
    if (widget._config.onObjectStatusChanged != null) {
      final Map<String, dynamic> data = jsonDecode(message.message);
      final SeatsioSelectedObject object = SeatsioSelectedObject(label: data["object"]["label"]);
      widget._config.onObjectStatusChanged!(object);
    }
  }

  void onObjectBooked(JavaScriptMessage message) {
    if (widget._config.onObjectBooked != null) {
      final Map<String, dynamic> data = jsonDecode(message.message);
      final SeatsioSelectedObject object = SeatsioSelectedObject(label: data["object"]["label"]);
      widget._config.onObjectBooked!(object);
    }
  }

  void onSessionInitialized(JavaScriptMessage message) {
    if (widget._config.onSessionInitialized != null) {
      final Map<String, dynamic> data = jsonDecode(message.message);
      final HoldToken token = HoldToken.fromJson(data["holdToken"]);
      widget._config.onSessionInitialized!(token);
    }
  }

  void onHoldCallsInProgress(JavaScriptMessage message) {
    if (widget._config.onHoldCallsInProgress != null) {
      widget._config.onHoldCallsInProgress!();
    }
  }

  void onHoldCallsComplete(JavaScriptMessage message) {
    if (widget._config.onHoldCallsComplete != null) {
      widget._config.onHoldCallsComplete!();
    }
  }

  void onHoldSucceeded(JavaScriptMessage message) {
    if (widget._config.onHoldSucceeded != null) {
      final Map<String, dynamic> data = jsonDecode(message.message);
      List<SeatsioSelectedObject> objects = _toObjectsList(data["objects"]);
      List<SelectedTicketType>? ticketTypes = _toTicketTypesList(data["ticketTypes"]);
      widget._config.onHoldSucceeded!(objects, ticketTypes);
    }
  }

  void onHoldFailed(JavaScriptMessage message) {
    if (widget._config.onHoldFailed != null) {
      final Map<String, dynamic> data = jsonDecode(message.message);
      List<SeatsioSelectedObject> objects = _toObjectsList(data["objects"]);
      List<SelectedTicketType>? ticketTypes = _toTicketTypesList(data["ticketTypes"]);
      widget._config.onHoldFailed!(objects, ticketTypes);
    }
  }

  void onHoldTokenExpired(JavaScriptMessage message) {
    if (widget._config.onHoldTokenExpired != null) {
      widget._config.onHoldTokenExpired!();
    }
  }

  void onReleaseHoldSucceeded(JavaScriptMessage message) {
    if (widget._config.onReleaseHoldSucceeded != null) {
      final Map<String, dynamic> data = jsonDecode(message.message);
      List<SeatsioSelectedObject> objects = _toObjectsList(data["objects"]);
      List<SelectedTicketType>? ticketTypes = _toTicketTypesList(data["ticketTypes"]);
      widget._config.onReleaseHoldSucceeded!(objects, ticketTypes);
    }
  }

  void onReleaseHoldFailed(JavaScriptMessage message) {
    if (widget._config.onReleaseHoldFailed != null) {
      final Map<String, dynamic> data = jsonDecode(message.message);
      List<SeatsioSelectedObject> objects = _toObjectsList(data["objects"]);
      List<SelectedTicketType>? ticketTypes = _toTicketTypesList(data["ticketTypes"]);
      widget._config.onReleaseHoldFailed!(objects, ticketTypes);
    }
  }

  void onSelectionValid(JavaScriptMessage message) {
    if (widget._config.onSelectionValid != null) {
      widget._config.onSelectionValid!();
    }
  }

  void onSelectionInvalid(JavaScriptMessage message) {
    if (widget._config.onSelectionInvalid != null) {
      final Map<String, dynamic> data = jsonDecode(message.message);
      final List<String> violations = (data["violations"] as List<dynamic>).map((v) => v.toString()).toList();
      widget._config.onSelectionInvalid!(violations);
    }
  }

  void onFilteredCategoriesChanged(JavaScriptMessage message) {
    if (widget._config.onFilteredCategoriesChanged != null) {
      final Map<String, dynamic> data = jsonDecode(message.message);
      final List<SeatsioCategory> categories =
          (data["categories"] as List<dynamic>).map((category) => SeatsioCategory.fromJson(category)).toList();
      widget._config.onFilteredCategoriesChanged!(categories);
    }
  }

  List<SeatsioSelectedObject> _toObjectsList(objectsData) {
    final List<SeatsioSelectedObject> objects =
        (objectsData as List).map((obj) => SeatsioSelectedObject(label: obj["label"] as String)).toList();
    return objects;
  }

  List<SelectedTicketType>? _toTicketTypesList(ticketTypesData) {
    final List<SelectedTicketType>? ticketTypes = ticketTypesData != null
        ? (ticketTypesData as List)
            .map((ticket) => SelectedTicketType.fromJson(ticket as Map<String, dynamic>?))
            .whereType<SelectedTicketType>()
            .toList()
        : null;
    return ticketTypes;
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      controller: _webViewController,
      gestureRecognizers: widget._gestureRecognizers,
    );
  }
}
