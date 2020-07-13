import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:weather/custom_icons.dart';
import 'package:weather/provider/weather_provider.dart';
import 'package:weather/widgets/chart.dart';
import 'package:weather/widgets/rounded_info_box.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final weatherData = Provider.of<WeatherProvider>(context).items[0];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('DETAILS:'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              roundedInfoBox(
                  context,
                  'Feels Like',
                  '${weatherData.current.feelsLike}\u2103',
                  CustomIcons.wi_thermometer),
              roundedInfoBox(context, 'Humidity',
                  '${weatherData.current.humidity}%', CustomIcons.wi_humidity),
              roundedInfoBox(
                  context,
                  'Dew Point',
                  '${weatherData.current.dewPoint}\u00B0',
                  CustomIcons.wi_thermometer_exterior),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              roundedInfoBox(context, 'UV Index',
                  weatherData.current.uvi.toString(), Icons.blur_on),
              roundedInfoBox(context, 'Pressure',
                  '${weatherData.current.pressure} hPa', Icons.av_timer),
              roundedInfoBox(context, 'Visibility',
                  '${weatherData.current.visibility} m', CustomIcons.wi_fog),
            ],
          ),
          sample3(weatherData: weatherData),
        ],
      ),
    );
  }
}
