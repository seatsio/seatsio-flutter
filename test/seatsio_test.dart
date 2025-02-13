import 'package:flutter_test/flutter_test.dart';

import 'package:seatsio/seatsio_old.dart';

void main() {
  test('seating chart config', (){
    final chartConfig = SeatingChartConfig.init();
    expect(chartConfig.enableObjectClickedCallback, true);
    expect(chartConfig.enableChartRenderedCallback, true);
  });
}
