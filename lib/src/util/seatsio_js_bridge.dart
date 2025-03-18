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
    if (chartConfig.onChartRenderingFailed != null) {
      callbacks.add("""
        "onChartRenderingFailed": (chart) => {
          window.onChartRenderingFailedJsChannel.postMessage(JSON.stringify({
            chart: chart
          }));
        }
      """);
    }
    if (chartConfig.onChartRerenderingStarted != null) {
      callbacks.add("""
        "onChartRerenderingStarted": (chart) => {
          window.onChartRerenderingStartedJsChannel.postMessage(JSON.stringify({
            chart: chart
          }));
        }
      """);
    }

    if (chartConfig.onObjectClicked != null) {
      callbacks.add("""
        "onObjectClicked": (object) => {
          window.onObjectClickedJsChannel.postMessage(JSON.stringify({
            object: object
          }));
        }
      """);
    }

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

    if (chartConfig.onObjectDeselected != null) {
      callbacks.add("""
        "onObjectDeselected": (object, ticketType) => {
          window.onObjectDeselectedJsChannel.postMessage(JSON.stringify({
            object: object,
            ticketType: ticketType
          }));
        }
      """);
    }

    if (chartConfig.onObjectStatusChanged != null) {
      callbacks.add("""
        "onObjectStatusChanged": (object) => {
          window.onObjectStatusChangedJsChannel.postMessage(JSON.stringify({
            object: object
          }));
        }
      """);
    }

    if (chartConfig.onObjectBooked != null) {
      callbacks.add("""
        "onObjectBooked": (object) => {
          window.onObjectBookedJsChannel.postMessage(JSON.stringify({
            object: object
          }));
        }
      """);
    }

    if (chartConfig.onSessionInitialized != null) {
      callbacks.add("""
      "onSessionInitialized": (holdToken) => {
        window.onSessionInitializedJsChannel.postMessage(JSON.stringify({
          holdToken: holdToken
        }));
      }
      """);
    }

    if (chartConfig.onHoldCallsInProgress != null) {
      callbacks.add("""
      "onHoldCallsInProgress": () => {
        window.onHoldCallsInProgressJsChannel.postMessage(JSON.stringify({
        }));
      }
      """);
    }

    if (chartConfig.onHoldCallsComplete != null) {
      callbacks.add("""
      "onHoldCallsComplete": () => {
        window.onHoldCallsCompleteJsChannel.postMessage(JSON.stringify({
        }));
      }
      """);
    }

    if(chartConfig.onHoldSucceeded != null) {
      callbacks.add("""
        "onHoldSucceeded": (objects, ticketTypes) => {
          window.onHoldSucceededJsChannel.postMessage(JSON.stringify({
            objects: objects,
            ticketTypes: ticketTypes
          }));
        }      
      """);
    }

    if(chartConfig.onHoldFailed != null) {
      callbacks.add("""
        "onHoldFailed": (objects, ticketTypes) => {
          window.onHoldFailedJsChannel.postMessage(JSON.stringify({
            objects: objects,
            ticketTypes: ticketTypes
          }));
        }      
      """);
    }

    if (chartConfig.onHoldTokenExpired != null) {
      callbacks.add("""
      "onHoldTokenExpired": () => {
        window.onHoldTokenExpiredJsChannel.postMessage(JSON.stringify({
        }));
      }
      """);
    }

    if(chartConfig.onReleaseHoldSucceeded != null) {
      callbacks.add("""
        "onReleaseHoldSucceeded": (objects, ticketTypes) => {
          window.onReleaseHoldSucceededJsChannel.postMessage(JSON.stringify({
            objects: objects,
            ticketTypes: ticketTypes
          }));
        }      
      """);
    }

    if(chartConfig.onReleaseHoldFailed != null) {
      callbacks.add("""
        "onReleaseHoldFailed": (objects, ticketTypes) => {
          window.onReleaseHoldFailedJsChannel.postMessage(JSON.stringify({
            objects: objects,
            ticketTypes: ticketTypes
          }));
        }      
      """);
    }

    if (chartConfig.onSelectionValid != null) {
      callbacks.add("""
      "onSelectionValid": () => {
        window.onSelectionValidJsChannel.postMessage(JSON.stringify({
        }));
      }
      """);
    }

    if (chartConfig.onSelectionInvalid != null) {
      callbacks.add("""
      "onSelectionInvalid": (violations) => {
        window.onSelectionInvalidJsChannel.postMessage(JSON.stringify({
          violations: violations
        }));
      }
      """);
    }

    // onFullScreenOpened
    // onFullScreenClosed
    // onFilteredCategoriesChanged
    //

    return callbacks;
  }
}
