import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/custom_icons.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/widgets/bottom_row_widget.dart';
import 'package:weather/widgets/detail_dialog.dart';

class BottomRow extends StatelessWidget {
  final WeatherModel weatherData;

  const BottomRow({Key key, this.weatherData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: weatherData.daily.length,
      itemBuilder: (BuildContext context, int index) {
        String day = '';
        final iconName = 'i${weatherData.daily[index].weather[0].id}';
        final icon = CustomIcons().iconMapping[iconName];
        if (index == 0) {
          day = 'TODAY';
        } else {
          final temp = DateTime.fromMillisecondsSinceEpoch(
              weatherData.daily[index].dt * 1000);
          day = DateFormat.EEEE().format(temp).toUpperCase();
        }
        final String min = weatherData.daily[index].temp.min.toStringAsFixed(0);
        final String max = weatherData.daily[index].temp.max.toStringAsFixed(0);
        return Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 18.0),
          child: InkWell(
            onTap: () => detailDialog(
                context, day, weatherData.daily[index].temp, index),
            child: BottomRowWidget(
              day: day == 'TODAY' ? day : day.substring(0, 3),
              icon: icon,
              max: max,
              min: min,
            ),
          ),
        );
      },
    );
  }
}
