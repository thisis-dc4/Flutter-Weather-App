import 'package:flutter/foundation.dart';

import 'package:weather/data/weather_data.dart';

class WeatherProvider with ChangeNotifier {
  WeatherData _item = WeatherData(
    lat: 33.44,
    lon: -94.04,
    timezone: "America/Chicago",
    timezoneOffset: -18000,
    current: Current(
      dt: 1588935779,
      sunrise: 1588936856,
      sunset: 1588986260,
      temp: 16.75,
      feelsLike: 16.07,
      pressure: 1009,
      humidity: 93,
      dewPoint: 15.61,
      uvi: 8.97,
      clouds: 90,
      visibility: 12874,
      windSpeed: 3.6,
      windDeg: 280,
      weather: [
        Weather(
          id: 501,
          main: "Rain",
          description: "moderate rain",
          icon: "10n",
        ),
        Weather(
          id: 200,
          main: "Thunderstorm",
          description: "thunderstorm with light rain",
          icon: "11n",
        )
      ],
      rain: Rain(the1H: 2.79),
    ),
    minutely: [
      Minutely(
        dt: 1588935780,
        precipitation: 2.789,
      )
    ],
    hourly: [
      Hourly(
        dt: 1588935600,
        temp: 16.75,
        feelsLike: 13.93,
        pressure: 1009,
        humidity: 93,
        dewPoint: 15.61,
        clouds: 90,
        windSpeed: 6.66,
        windDeg: 203,
        weather: [
          Weather(
            id: 501,
            main: "Rain",
            description: "moderate rain",
            icon: "10n",
          )
        ],
        rain: Rain(the1H: 2.92),
      )
    ],
    daily: [
      Daily(
        dt: 1588960800,
        sunrise: 1588936856,
        sunset: 1588986260,
        temp: Temp(
          day: 22.49,
          min: 10.96,
          max: 22.49,
          night: 10.96,
          eve: 18.45,
          morn: 18.14,
        ),
        feelsLike: FeelsLike(
          day: 18.72,
          night: 6.53,
          eve: 16.34,
          morn: 16.82,
        ),
        pressure: 1014,
        humidity: 60,
        dewPoint: 14.35,
        windSpeed: 7.36,
        windDeg: 342,
        weather: [
          Weather(
            id: 502,
            main: "Rain",
            description: "heavy intensity rain",
            icon: "10d",
          )
        ],
        clouds: 68,
        rain: 15.38,
        uvi: 8.97,
      )
    ],
  );

  WeatherData get items {
    return _item;
  }
}
