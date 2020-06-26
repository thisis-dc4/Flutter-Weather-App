import 'package:flutter/foundation.dart';

import 'package:weather/data/weather_data.dart';

class WeatherProvider with ChangeNotifier {
  final WeatherData _item = WeatherData(
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
      ),
      Daily(
        dt: 1593194400,
        sunrise: 1593169698,
        sunset: 1593221386,
        temp: Temp(
          day: 26.94,
          min: 20.47,
          max: 26.94,
          night: 20.84,
          eve: 23.71,
          morn: 22.25,
        ),
        feelsLike: FeelsLike(
          day: 25.55,
          night: 20.43,
          eve: 23.52,
          morn: 24.65,
        ),
        pressure: 1019,
        humidity: 69,
        dewPoint: 20.77,
        windSpeed: 7.79,
        windDeg: 184,
        weather: [
          Weather(
            id: 500,
            main: "Rain",
            description: "light rain",
            icon: "10d",
          )
        ],
        clouds: 94,
        rain: 2.64,
        uvi: 11.56,
      ),
      Daily(
        dt: 1593280800,
        sunrise: 1593256118,
        sunset: 1593307790,
        temp: Temp(
          day: 31.28,
          min: 20.04,
          max: 33.06,
          night: 24.44,
          eve: 29.43,
          morn: 20.04,
        ),
        feelsLike: FeelsLike(
          day: 32.43,
          night: 25.94,
          eve: 31.89,
          morn: 20.6,
        ),
        pressure: 1016,
        humidity: 58,
        dewPoint: 22.04,
        windSpeed: 5.08,
        windDeg: 203,
        weather: [
          Weather(
            id: 500,
            main: "Rain",
            description: "light rain",
            icon: "10d",
          )
        ],
        clouds: 20,
        rain: 0.27,
        uvi: 11.32,
      ),
      Daily(
        dt: 1593367200,
        sunrise: 1593342539,
        sunset: 1593394192,
        temp: Temp(
          day: 32.09,
          min: 22.81,
          max: 33.47,
          night: 24.46,
          eve: 30.8,
          morn: 22.81,
        ),
        feelsLike: FeelsLike(
          day: 34.35,
          night: 27.1,
          eve: 34.72,
          morn: 25.27,
        ),
        pressure: 1013,
        humidity: 59,
        dewPoint: 23.1,
        windSpeed: 4.3,
        windDeg: 201,
        weather: [
          Weather(
            id: 500,
            main: "Rain",
            description: "light rain",
            icon: "10d",
          )
        ],
        clouds: 20,
        rain: 0.42,
        uvi: 11.98,
      ),
      Daily(
        dt: 1593453600,
        sunrise: 1593428961,
        sunset: 1593480592,
        temp: Temp(
          day: 32.21,
          min: 22.98,
          max: 33.84,
          night: 25.82,
          eve: 30.69,
          morn: 22.98,
        ),
        feelsLike: FeelsLike(
          day: 34.01,
          night: 27.48,
          eve: 33.82,
          morn: 25.28,
        ),
        pressure: 1013,
        humidity: 58,
        dewPoint: 22.97,
        windSpeed: 4.83,
        windDeg: 198,
        weather: [
          Weather(
            id: 802,
            main: "Clouds",
            description: "scattered clouds",
            icon: "03d",
          )
        ],
        clouds: 26,
        uvi: 11.54,
      ),
      Daily(
        dt: 1593540000,
        sunrise: 1593515385,
        sunset: 1593566991,
        temp: Temp(
          day: 29.42,
          min: 23,
          max: 32.93,
          night: 26.23,
          eve: 31.55,
          morn: 23,
        ),
        feelsLike: FeelsLike(
          day: 31.72,
          night: 27.98,
          eve: 35.19,
          morn: 25.25,
        ),
        pressure: 1011,
        humidity: 70,
        dewPoint: 23.57,
        windSpeed: 4.5,
        windDeg: 206,
        weather: [
          Weather(
            id: 803,
            main: "Clouds",
            description: "broken clouds",
            icon: "04d",
          )
        ],
        clouds: 66,
        uvi: 11.78,
      ),
      Daily(
        dt: 1593712800,
        sunrise: 1593688235,
        sunset: 1593739784,
        temp: Temp(
          day: 32.33,
          min: 22.84,
          max: 34.35,
          night: 25.05,
          eve: 31.69,
          morn: 22.84,
        ),
        feelsLike: FeelsLike(
          day: 34.47,
          night: 27.94,
          eve: 35.11,
          morn: 25.86,
        ),
        pressure: 1015,
        humidity: 53,
        dewPoint: 21.56,
        windSpeed: 3.29,
        windDeg: 191,
        weather: [
          Weather(
            id: 803,
            main: "Clouds",
            description: "broken clouds",
            icon: "04d",
          )
        ],
        clouds: 56,
        uvi: 10.81,
      ),
      Daily(
        dt: 1593799200,
        sunrise: 1593774661,
        sunset: 1593826178,
        temp: Temp(
          day: 33.15,
          min: 23.92,
          max: 33.15,
          night: 28.71,
          eve: 28.71,
          morn: 23.92,
        ),
        feelsLike: FeelsLike(
          day: 35.89,
          night: 30.74,
          eve: 30.74,
          morn: 27.34,
        ),
        pressure: 1017,
        humidity: 52,
        dewPoint: 22.19,
        windSpeed: 2.76,
        windDeg: 251,
        weather: [
          Weather(
            id: 500,
            main: "Rain",
            description: "light rain",
            icon: "10d",
          )
        ],
        clouds: 52,
        rain: 2.31,
        uvi: 11.33,
      )
    ],
  );

  WeatherData get items {
    return _item;
  }
}
