import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:weather/custom_icons.dart';
import 'package:weather/provider/hive_db_provider.dart';
import 'package:weather/widgets/line_chart.dart';
import 'package:weather/widgets/rounded_info_box.dart';

class DetailScreen extends StatelessWidget {
  final int index;

  const DetailScreen({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final weatherData = Provider.of<HiveDbProvider>(context).items[index];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Divider(),
          const Opacity(
            opacity: 0.73,
            child: Text(
              'DETAILS:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              roundedInfoBox(
                context,
                'FEELS LIKE',
                '${weatherData.current.feelsLike.toString()}\u00B0',
                CustomIcons.wiThermometer,
              ),
              roundedInfoBox(
                context,
                'HUMIDITY',
                '${weatherData.current.humidity}%',
                CustomIcons.wiHumidity,
              ),
              roundedInfoBox(
                context,
                'DEW POINT',
                '${weatherData.current.dewPoint}\u00B0',
                CustomIcons.wiThermometerExterior,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              roundedInfoBox(
                context,
                'UV INDEX',
                weatherData.current.uvi.toString(),
                Icons.blur_on,
              ),
              roundedInfoBox(
                context,
                'PRESSURE',
                '${weatherData.current.pressure} hPa',
                Icons.av_timer,
              ),
              roundedInfoBox(
                context,
                'VISIBILITY',
                '${weatherData.current.visibility} m',
                CustomIcons.wiFog,
              ),
            ],
          ),
          const SizedBox(height: 10),
          LineChart(weatherData: weatherData),
        ],
      ),
    );
  }
}
