import '../models/seating_chart_config.dart';

class SeatsioJsBridge {
  static List<String> buildCallbacksConfiguration(SeatingChartConfig chartConfig) {
    final List<String> callbacks = [];

    if (chartConfig.priceFormatter != null) {
      callbacks.add("""
        "priceFormatter": (price) => {
          promiseCounter++;
          window.callbackChannel.postMessage(JSON.stringify({
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
          window.callbackChannel.postMessage(JSON.stringify({
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

    if (chartConfig.onChartRendered != null) {
      callbacks.add("""
        "onChartRendered": (chart) => {
          window.onChartRenderedJsChannel.postMessage(JSON.stringify({
            chart: chart
          }));
        }
      """);
    }

    // onChartRenderingFailed
    // onChartRerenderingStarted
    // onObjectClicked
    if (chartConfig.onObjectSelected != null) {
      callbacks.add("""
        "onObjectSelected": (object, ticketType) => {
          window.onObjectSelectedJsChannel.postMessage(JSON.stringify({
            object: object,
            ticketType: ticketType
          }));
        }
      """);
    }

    // onObjectDeselected
    // onObjectStatusChanged
    // onOBjectBooked
    // onSessionInitialized
    // onHoldCallsInProgress
    // onHoldCallsComplete
    // onHoldSucceeded
    // onHoldFailed
    // onHoldTokenExpired
    // onReleaseHoldSucceeded
    // onReleaseHoldFailed
    // onSelectionValid
    // onSelectionInvalid
    // onFullScreenOpened
    // onFullScreenClosed
    // onFilteredCategoriesChanged
    //

    return callbacks;
  }
}
