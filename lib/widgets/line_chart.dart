import 'package:flutter/material.dart';
import 'package:bezier_chart/bezier_chart.dart';

import 'package:weather/data/weather_data.dart';

class LineChart extends StatelessWidget {
  const LineChart({Key key, this.weatherData}) : super(key: key);
  final WeatherData weatherData;

  List<DataPoint> get groupedHourlyValues {
    return List.generate(weatherData.hourly.length, (index) {
      return DataPoint<DateTime>(
        value: weatherData.hourly[index].temp,
        xAxis: DateTime.fromMillisecondsSinceEpoch(
            weatherData.hourly[index].dt * 1000),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final int length = weatherData.hourly.length - 1;
    final currentTime = DateTime.now();
    final fromDate = DateTime.fromMillisecondsSinceEpoch(
      weatherData.hourly[0].dt * 1000,
    );
    final toDate = DateTime.fromMillisecondsSinceEpoch(
      weatherData.hourly[length].dt * 1000,
    );

    return Center(
      child: Container(
        color: Colors.red,
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
        child: BezierChart(
          fromDate: fromDate,
          bezierChartScale: BezierChartScale.HOURLY,
          toDate: toDate,
          selectedDate: currentTime,
          series: [
            BezierLine(
              label: '\u2103',
              onMissingValue: (dateTime) {
                return 0.0;
              },
              data: groupedHourlyValues,
            ),
          ],
          config: BezierChartConfig(
            verticalIndicatorStrokeWidth: 3.0,
            verticalIndicatorColor: Colors.black26,
            showVerticalIndicator: true,
            verticalIndicatorFixedPosition: false,
            backgroundColor: Colors.red,
            showDataPoints: true,
            footerHeight: 30.0,
          ),
        ),
      ),
    );
  }
}
