import 'package:flutter/material.dart';
import 'package:seatsio/seatsio.dart';
import 'package:seatsio/src/ui/seatsio_webview.dart';

class SeatsioSeatingChart extends StatefulWidget {
  final SeatingChartConfig config;

  const SeatsioSeatingChart({
    Key? key,
    required this.config,
  }) : super(key: key);

  @override
  _SeatsioSeatingChartState createState() => _SeatsioSeatingChartState();
}

class _SeatsioSeatingChartState extends State<SeatsioSeatingChart> {

  @override
  Widget build(BuildContext context) {
    return SeatsioWebView(
      onWebViewCreated: (controller) {
        controller.reload(widget.config);
      },
      config: widget.config,
    );
  }
}
