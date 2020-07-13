import 'package:flutter/material.dart';
import 'package:bezier_chart/bezier_chart.dart';

import 'package:weather/data/weather_data.dart';

class sample3 extends StatelessWidget {
  const sample3({Key key, this.weatherData}) : super(key: key);
  final WeatherData weatherData;

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
              data: [
                DataPoint<DateTime>(
                  value: weatherData.daily[1].temp.day,
                  xAxis: DateTime.fromMillisecondsSinceEpoch(
                    weatherData.daily[1].dt * 1000,
                  ),
                ),
                DataPoint<DateTime>(
                  value: weatherData.daily[2].temp.day,
                  xAxis: DateTime.fromMillisecondsSinceEpoch(
                    weatherData.daily[2].dt * 1000,
                  ),
                ),
                DataPoint<DateTime>(
                  value: weatherData.daily[3].temp.day,
                  xAxis: DateTime.fromMillisecondsSinceEpoch(
                    weatherData.daily[3].dt * 1000,
                  ),
                ),
                DataPoint<DateTime>(
                  value: weatherData.daily[4].temp.day,
                  xAxis: DateTime.fromMillisecondsSinceEpoch(
                    weatherData.daily[4].dt * 1000,
                  ),
                ),
                DataPoint<DateTime>(
                  value: weatherData.daily[5].temp.day,
                  xAxis: DateTime.fromMillisecondsSinceEpoch(
                    weatherData.daily[5].dt * 1000,
                  ),
                ),
                DataPoint<DateTime>(
                  value: weatherData.daily[6].temp.day,
                  xAxis: DateTime.fromMillisecondsSinceEpoch(
                    weatherData.daily[6].dt * 1000,
                  ),
                ),
                DataPoint<DateTime>(
                  value: weatherData.daily[7].temp.day,
                  xAxis: DateTime.fromMillisecondsSinceEpoch(
                    weatherData.daily[7].dt * 1000,
                  ),
                ),
              ],
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
