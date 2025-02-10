import 'package:flutter/material.dart';
import 'package:seatsio/seatsio.dart';

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
  SeatsioWebViewController? _seatsioController;

  @override
  Widget build(BuildContext context) {
    return SeatsioWebView(
      onWebViewCreated: (controller) {
        _seatsioController = controller;
        _loadSeatsio();
      },
    );
  }

  void _loadSeatsio() {
    _seatsioController?.reload(widget.config);
  }
}
