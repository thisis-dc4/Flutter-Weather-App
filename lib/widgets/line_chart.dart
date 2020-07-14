import 'package:flutter/material.dart';
import 'package:bezier_chart/bezier_chart.dart';

import 'package:weather/data/weather_data.dart';

class LineChart extends StatelessWidget {
  const LineChart({Key key, this.weatherData}) : super(key: key);
  final WeatherData weatherData;

  List<DataPoint> get groupedHourlyValues {
    return List.generate(weatherData.daily.length, (index) {
      return DataPoint<DateTime>(
        value: weatherData.daily[index].temp.day,
        xAxis: DateTime.fromMillisecondsSinceEpoch(
            weatherData.daily[index].dt * 1000),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final fromDate = DateTime.fromMillisecondsSinceEpoch(
      weatherData.daily[1].dt * 1000,
    );
    final toDate = DateTime.fromMillisecondsSinceEpoch(
      weatherData.daily[7].dt * 1000,
    );

    return Center(
      child: Container(
        color: Colors.red,
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
        child: BezierChart(
          fromDate: fromDate,
          bezierChartScale: BezierChartScale
              .WEEKLY, // TODO: Change it HOURLY when you get the data or after api integration.
          toDate: toDate,
          selectedDate: DateTime.fromMillisecondsSinceEpoch(
            weatherData.daily[6].dt * 1000,
          ),
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
