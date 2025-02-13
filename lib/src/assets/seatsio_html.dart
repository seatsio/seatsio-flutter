final String seatsioHTML = """
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdn-%region%.seatsio.net/chart.js" type="text/javascript"></script>
  </head>
    <body style="margin: 0; padding: 0">
      <div id="chart" style="width: 100%; height: 100%;"></div>
      <script>
        let chart = new seatsio.SeatingChart(%configAsJs%).render()
      </script>
  </body>
</html>
""";
