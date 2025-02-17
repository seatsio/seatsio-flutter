import '../models/seating_chart_config.dart';

class SeatsioJsBridge {
  static List<String> buildCallbacksConfiguration(SeatingChartConfig chartConfig) {
    final List<String> callbacks = [];

    // TODO implement

    return callbacks;
  }

  static String buildCallbackConfigAsJS(String name) {
    return '$name: object => $name.postMessage(JSON.stringify(object))';
  }
}
