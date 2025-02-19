final String seatsioHTML = """
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script>
        (function() {
          console.log = message => window.FlutterLogger.postMessage(message); 
          console.warn = message => window.FlutterWarningLogger.postMessage(message);
          console.error = message => window.FlutterErrorLogger.postMessage(message);
          window.onerror = function(message, source, lineno, colno, error) {
            window.FlutterErrorLogger.postMessage(
              "JS Error: " + message + " at " + source + ":" + lineno + ":" + colno
            );
          };
          window.addEventListener("message", function(event) {
            if (event.origin.includes("seatsio.net")) {
              if (typeof event.data === "string" && event.data.includes("error")) {
                window.FlutterErrorLogger.postMessage(event.data);
              }
            }
          }, false);
        })();
        </script>
    <script src="https://cdn-%region%.seatsio.net/chart.js" type="text/javascript"></script>
  </head>
    <body style="margin: 0; padding: 0">
      <div id="chart" style="width: 100%; height: 100%;"></div>
      <script>
        let promises = [];
        let promiseCounter = 0;

        const resolvePromise = (promiseId, data) => {
            promises[promiseId](data)
        }
        let chart = new seatsio.SeatingChart(%configAsJs%).render()
      </script>
  </body>
</html>
""";
