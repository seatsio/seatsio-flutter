import '../models/seating_chart_config.dart';

class SeatsioJsBridge {
  static List<String> buildCallbacksConfiguration(SeatingChartConfig chartConfig) {
    final List<String> callbacks = [];

    if (chartConfig.priceFormatter != null) {
      callbacks.add("""
        "priceFormatter": (price) => {
          promiseCounter++;
          window.FlutterCallback.postMessage(JSON.stringify({
            type: "priceFormatterRequested",
            data: {
              promiseId: promiseCounter,
              price: price
            }
          }));
          return new Promise((resolve) => {
            promises[promiseCounter] = resolve;
          });
        }        
      """);
    }

    if (chartConfig.objectColor != null) {
      callbacks.add('"objectColor": ${chartConfig.objectColor}');
    }

    return callbacks;
  }
}
