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

    if (chartConfig.popoverInfo != null) {
      callbacks.add("""
        "popoverInfo": (object) => {
          promiseCounter++;
          window.FlutterCallback.postMessage(JSON.stringify({
            type: "popoverInfoRequested",
            data: {
              promiseId: promiseCounter,
              object: object
            }
          }));
          return new Promise((resolve) => {
            promises[promiseCounter] = resolve;
          });
        }
      """);
    }

    if (chartConfig.onObjectSelected != null) {
      callbacks.add("""
        "onObjectSelected": (object, ticketType) => {
          window.FlutterOnObjectSelected.postMessage(JSON.stringify({
            object: object,
            ticketType: ticketType
          }));
        }
      """);
    }

    return callbacks;
  }
}
