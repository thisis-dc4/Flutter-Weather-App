import 'package:flutter/widgets.dart';

class CustomIcons {
  CustomIcons();

  static const _kFontFam = 'CustomIcons';

  Map<String, IconData> iconMapping = {
    // For the 2xx series:
    "i200": const IconData(0xe993, fontFamily: _kFontFam),
    "i202": const IconData(0xe993, fontFamily: _kFontFam),
    "i210": const IconData(0xe912, fontFamily: _kFontFam),
    "i211": const IconData(0xe912, fontFamily: _kFontFam),
    "i212": const IconData(0xe912, fontFamily: _kFontFam),
    "i221": const IconData(0xe912, fontFamily: _kFontFam),
    "i230": const IconData(0xe993, fontFamily: _kFontFam),
    "i231": const IconData(0xe993, fontFamily: _kFontFam),
    "i232": const IconData(0xe993, fontFamily: _kFontFam),

    // For the 3xx series:
    "i300": const IconData(0xe989, fontFamily: _kFontFam),
    "i301": const IconData(0xe989, fontFamily: _kFontFam),
    "i302": const IconData(0xe978, fontFamily: _kFontFam),
    "i310": const IconData(0xe97b, fontFamily: _kFontFam),
    "i311": const IconData(0xe978, fontFamily: _kFontFam),
    "i312": const IconData(0xe978, fontFamily: _kFontFam),
    "i313": const IconData(0xe980, fontFamily: _kFontFam),
    "i314": const IconData(0xe978, fontFamily: _kFontFam),
    "i321": const IconData(0xe989, fontFamily: _kFontFam),

    // For the 5xx series:
    "i500": const IconData(0xe989, fontFamily: _kFontFam),
    "i501": const IconData(0xe978, fontFamily: _kFontFam),
    "i502": const IconData(0xe978, fontFamily: _kFontFam),
    "i503": const IconData(0xe978, fontFamily: _kFontFam),
    "i504": const IconData(0xe978, fontFamily: _kFontFam),
    "i511": const IconData(0xe97b, fontFamily: _kFontFam),
    "i520": const IconData(0xe980, fontFamily: _kFontFam),
    "i521": const IconData(0xe980, fontFamily: _kFontFam),
    "i522": const IconData(0xe980, fontFamily: _kFontFam),
    "i531": const IconData(0xe98b, fontFamily: _kFontFam),

    // For the 6xx series:
    "i600": const IconData(0xe985, fontFamily: _kFontFam),
    "i601": const IconData(0xe985, fontFamily: _kFontFam),
    "i602": const IconData(0xe981, fontFamily: _kFontFam),
    "i611": const IconData(0xe97b, fontFamily: _kFontFam),
    "i612": const IconData(0xe97b, fontFamily: _kFontFam),
    "i615": const IconData(0xe97b, fontFamily: _kFontFam),
    "i616": const IconData(0xe97b, fontFamily: _kFontFam),
    "i620": const IconData(0xe97b, fontFamily: _kFontFam),
    "i621": const IconData(0xe985, fontFamily: _kFontFam),
    "i622": const IconData(0xe985, fontFamily: _kFontFam),

    // For the 7xx series:
    "i701": const IconData(0xe980, fontFamily: _kFontFam),
    "i711": const IconData(0xe984, fontFamily: _kFontFam),
    "i721": const IconData(0xe8e9, fontFamily: _kFontFam),
    "i731": const IconData(0xe904, fontFamily: _kFontFam),
    "i741": const IconData(0xe908, fontFamily: _kFontFam),
    "i761": const IconData(0xe904, fontFamily: _kFontFam),
    "i762": const IconData(0xe904, fontFamily: _kFontFam),
    "i771": const IconData(0xe8e1, fontFamily: _kFontFam),
    "i781": const IconData(0xe9a0, fontFamily: _kFontFam),

    // For the 8xx series:
    "i800": const IconData(0xe8f7, fontFamily: _kFontFam),
    "i801": const IconData(0xe8e1, fontFamily: _kFontFam),
    "i802": const IconData(0xe8e1, fontFamily: _kFontFam),
    "i803": const IconData(0xe8e1, fontFamily: _kFontFam),
    "i804": const IconData(0xe8e0, fontFamily: _kFontFam),

    // For the 9xx series:
    "i900": const IconData(0xe9a0, fontFamily: _kFontFam),
    "i901": const IconData(0xe98b, fontFamily: _kFontFam),
    "i902": const IconData(0xe910, fontFamily: _kFontFam),
    "i903": const IconData(0xe986, fontFamily: _kFontFam),
    "i904": const IconData(0xe90e, fontFamily: _kFontFam),
    "i905": const IconData(0xe9b3, fontFamily: _kFontFam),
    "i906": const IconData(0xe90a, fontFamily: _kFontFam),
    "i957": const IconData(0xe98d, fontFamily: _kFontFam),
  };

  // Random Icons that are kept for future use. Also includes different icons for day and night that I may convert to later in the project.
  static const IconData wi_cloud_down = IconData(0xe8dd, fontFamily: _kFontFam);
  static const IconData wi_cloud_refresh =
      IconData(0xe8de, fontFamily: _kFontFam);
  static const IconData wi_cloud_up = IconData(0xe8df, fontFamily: _kFontFam);
  static const IconData wi_cloudy = IconData(0xe8e0, fontFamily: _kFontFam);
  static const IconData wi_cloudy_gusts =
      IconData(0xe8e1, fontFamily: _kFontFam);
  static const IconData wi_cloudy_windy =
      IconData(0xe8e2, fontFamily: _kFontFam);
  static const IconData wi_day_cloudy = IconData(0xe8e3, fontFamily: _kFontFam);
  static const IconData wi_day_cloudy_gusts =
      IconData(0xe8e4, fontFamily: _kFontFam);
  static const IconData wi_day_cloudy_high =
      IconData(0xe8e5, fontFamily: _kFontFam);
  static const IconData wi_day_cloudy_windy =
      IconData(0xe8e6, fontFamily: _kFontFam);
  static const IconData wi_day_fog = IconData(0xe8e7, fontFamily: _kFontFam);
  static const IconData wi_day_hail = IconData(0xe8e8, fontFamily: _kFontFam);
  static const IconData wi_day_haze = IconData(0xe8e9, fontFamily: _kFontFam);
  static const IconData wi_day_lightning =
      IconData(0xe8ea, fontFamily: _kFontFam);
  static const IconData wi_day_light_wind =
      IconData(0xe8eb, fontFamily: _kFontFam);
  static const IconData wi_day_rain = IconData(0xe8ec, fontFamily: _kFontFam);
  static const IconData wi_day_rain_mix =
      IconData(0xe8ed, fontFamily: _kFontFam);
  static const IconData wi_day_rain_wind =
      IconData(0xe8ee, fontFamily: _kFontFam);
  static const IconData wi_day_showers =
      IconData(0xe8ef, fontFamily: _kFontFam);
  static const IconData wi_day_sleet = IconData(0xe8f0, fontFamily: _kFontFam);
  static const IconData wi_day_sleet_storm =
      IconData(0xe8f1, fontFamily: _kFontFam);
  static const IconData wi_day_snow = IconData(0xe8f2, fontFamily: _kFontFam);
  static const IconData wi_day_snow_thunderstorm =
      IconData(0xe8f3, fontFamily: _kFontFam);
  static const IconData wi_day_snow_wind =
      IconData(0xe8f4, fontFamily: _kFontFam);
  static const IconData wi_day_sprinkle =
      IconData(0xe8f5, fontFamily: _kFontFam);
  static const IconData wi_day_storm_showers =
      IconData(0xe8f6, fontFamily: _kFontFam);
  static const IconData wi_day_sunny = IconData(0xe8f7, fontFamily: _kFontFam);
  static const IconData wi_day_sunny_overcast =
      IconData(0xe8f8, fontFamily: _kFontFam);
  static const IconData wi_day_thunderstorm =
      IconData(0xe8f9, fontFamily: _kFontFam);
  static const IconData wi_day_windy = IconData(0xe8fa, fontFamily: _kFontFam);
  static const IconData wi_degrees = IconData(0xe8fb, fontFamily: _kFontFam);
  static const IconData wi_direction_down =
      IconData(0xe8fc, fontFamily: _kFontFam);
  static const IconData wi_direction_down_left =
      IconData(0xe8fd, fontFamily: _kFontFam);
  static const IconData wi_direction_down_right =
      IconData(0xe8fe, fontFamily: _kFontFam);
  static const IconData wi_direction_left =
      IconData(0xe8ff, fontFamily: _kFontFam);
  static const IconData wi_direction_right =
      IconData(0xe900, fontFamily: _kFontFam);
  static const IconData wi_direction_up =
      IconData(0xe901, fontFamily: _kFontFam);
  static const IconData wi_direction_up_left =
      IconData(0xe902, fontFamily: _kFontFam);
  static const IconData wi_direction_up_right =
      IconData(0xe903, fontFamily: _kFontFam);
  static const IconData wi_dust = IconData(0xe904, fontFamily: _kFontFam);
  static const IconData wi_earthquake = IconData(0xe905, fontFamily: _kFontFam);
  static const IconData wi_fahrenheit = IconData(0xe906, fontFamily: _kFontFam);
  static const IconData wi_fire = IconData(0xe907, fontFamily: _kFontFam);
  static const IconData wi_fog = IconData(0xe908, fontFamily: _kFontFam);
  static const IconData wi_gale_warning =
      IconData(0xe909, fontFamily: _kFontFam);
  static const IconData wi_hail = IconData(0xe90a, fontFamily: _kFontFam);
  static const IconData wi_horizon = IconData(0xe90b, fontFamily: _kFontFam);
  static const IconData wi_flood = IconData(0xe90c, fontFamily: _kFontFam);
  static const IconData wi_horizon_alt =
      IconData(0xe90d, fontFamily: _kFontFam);
  static const IconData wi_hot = IconData(0xe90e, fontFamily: _kFontFam);
  static const IconData wi_humidity = IconData(0xe90f, fontFamily: _kFontFam);
  static const IconData wi_hurricane = IconData(0xe910, fontFamily: _kFontFam);
  static const IconData wi_hurricane_warning =
      IconData(0xe911, fontFamily: _kFontFam);
  static const IconData wi_lunar_eclipse =
      IconData(0xe913, fontFamily: _kFontFam);
  static const IconData wi_meteor = IconData(0xe914, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_first_quarter =
      IconData(0xe915, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_full =
      IconData(0xe916, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_new =
      IconData(0xe917, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_third_quarter =
      IconData(0xe918, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waning_crescent_1 =
      IconData(0xe919, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waning_crescent_2 =
      IconData(0xe91a, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waning_crescent_3 =
      IconData(0xe91b, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waning_crescent_4 =
      IconData(0xe91c, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waning_crescent_5 =
      IconData(0xe91d, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waning_crescent_6 =
      IconData(0xe91e, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waning_gibbous_1 =
      IconData(0xe91f, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waning_gibbous_2 =
      IconData(0xe920, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waning_gibbous_3 =
      IconData(0xe921, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waning_gibbous_4 =
      IconData(0xe922, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waning_gibbous_5 =
      IconData(0xe923, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waning_gibbous_6 =
      IconData(0xe924, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waxing_crescent_1 =
      IconData(0xe925, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waxing_crescent_2 =
      IconData(0xe926, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waxing_crescent_3 =
      IconData(0xe927, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waxing_crescent_4 =
      IconData(0xe928, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waxing_crescent_5 =
      IconData(0xe929, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waxing_crescent_6_ =
      IconData(0xe92a, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waxing_gibbous_1 =
      IconData(0xe92b, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waxing_gibbous_2 =
      IconData(0xe92c, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waxing_gibbous_5 =
      IconData(0xe92d, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waxing_gibbous_6_ =
      IconData(0xe92e, fontFamily: _kFontFam);
  static const IconData wi_moon_full = IconData(0xe92f, fontFamily: _kFontFam);
  static const IconData wi_moon_new = IconData(0xe930, fontFamily: _kFontFam);
  static const IconData wi_moonrise = IconData(0xe931, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waxing_gibbous_3 =
      IconData(0xe932, fontFamily: _kFontFam);
  static const IconData wi_moon_alt_waxing_gibbous_4 =
      IconData(0xe933, fontFamily: _kFontFam);
  static const IconData wi_moonset = IconData(0xe934, fontFamily: _kFontFam);
  static const IconData wi_moon_third_quarter =
      IconData(0xe935, fontFamily: _kFontFam);
  static const IconData wi_moon_waning_crescent_1 =
      IconData(0xe936, fontFamily: _kFontFam);
  static const IconData wi_moon_waning_crescent_2 =
      IconData(0xe937, fontFamily: _kFontFam);
  static const IconData wi_moon_first_quarter =
      IconData(0xe938, fontFamily: _kFontFam);
  static const IconData wi_moon_waning_crescent_3 =
      IconData(0xe939, fontFamily: _kFontFam);
  static const IconData wi_moon_waning_crescent_4_ =
      IconData(0xe93a, fontFamily: _kFontFam);
  static const IconData wi_moon_waning_crescent_5 =
      IconData(0xe93b, fontFamily: _kFontFam);
  static const IconData wi_moon_waning_crescent_6 =
      IconData(0xe93c, fontFamily: _kFontFam);
  static const IconData wi_moon_waning_gibbous_1 =
      IconData(0xe93d, fontFamily: _kFontFam);
  static const IconData wi_moon_waning_gibbous_2 =
      IconData(0xe93e, fontFamily: _kFontFam);
  static const IconData wi_moon_waning_gibbous_3 =
      IconData(0xe93f, fontFamily: _kFontFam);
  static const IconData wi_moon_waning_gibbous_4 =
      IconData(0xe940, fontFamily: _kFontFam);
  static const IconData wi_moon_waning_gibbous_5_ =
      IconData(0xe941, fontFamily: _kFontFam);
  static const IconData wi_moon_waning_gibbous_6 =
      IconData(0xe942, fontFamily: _kFontFam);
  static const IconData wi_moon_waxing_crescent_1 =
      IconData(0xe943, fontFamily: _kFontFam);
  static const IconData wi_moon_waxing_crescent_2 =
      IconData(0xe944, fontFamily: _kFontFam);
  static const IconData wi_moon_waxing_crescent_3 =
      IconData(0xe945, fontFamily: _kFontFam);
  static const IconData wi_moon_waxing_crescent_4 =
      IconData(0xe946, fontFamily: _kFontFam);
  static const IconData wi_moon_waxing_crescent_5 =
      IconData(0xe947, fontFamily: _kFontFam);
  static const IconData wi_moon_waxing_crescent_6_ =
      IconData(0xe948, fontFamily: _kFontFam);
  static const IconData wi_moon_waxing_gibbous_1 =
      IconData(0xe949, fontFamily: _kFontFam);
  static const IconData wi_moon_waxing_gibbous_2 =
      IconData(0xe94a, fontFamily: _kFontFam);
  static const IconData wi_moon_waxing_gibbous_3 =
      IconData(0xe94b, fontFamily: _kFontFam);
  static const IconData wi_moon_waxing_gibbous_4_ =
      IconData(0xe94c, fontFamily: _kFontFam);
  static const IconData wi_moon_waxing_gibbous_5 =
      IconData(0xe94d, fontFamily: _kFontFam);
  static const IconData wi_moon_waxing_gibbous_6 =
      IconData(0xe94e, fontFamily: _kFontFam);
  static const IconData wi_na = IconData(0xe94f, fontFamily: _kFontFam);
  static const IconData wi_night_alt_cloudy =
      IconData(0xe950, fontFamily: _kFontFam);
  static const IconData wi_night_alt_cloudy_gusts =
      IconData(0xe951, fontFamily: _kFontFam);
  static const IconData wi_night_alt_cloudy_high =
      IconData(0xe952, fontFamily: _kFontFam);
  static const IconData wi_night_alt_cloudy_windy =
      IconData(0xe953, fontFamily: _kFontFam);
  static const IconData wi_night_alt_hail =
      IconData(0xe954, fontFamily: _kFontFam);
  static const IconData wi_night_alt_lightning =
      IconData(0xe955, fontFamily: _kFontFam);
  static const IconData wi_night_alt_partly_cloudy =
      IconData(0xe956, fontFamily: _kFontFam);
  static const IconData wi_night_alt_rain =
      IconData(0xe957, fontFamily: _kFontFam);
  static const IconData wi_night_alt_rain_mix =
      IconData(0xe958, fontFamily: _kFontFam);
  static const IconData wi_night_alt_rain_wind =
      IconData(0xe959, fontFamily: _kFontFam);
  static const IconData wi_night_alt_showers =
      IconData(0xe95a, fontFamily: _kFontFam);
  static const IconData wi_night_alt_sleet =
      IconData(0xe95b, fontFamily: _kFontFam);
  static const IconData wi_night_alt_sleet_storm =
      IconData(0xe95c, fontFamily: _kFontFam);
  static const IconData wi_night_alt_snow =
      IconData(0xe95d, fontFamily: _kFontFam);
  static const IconData wi_night_alt_snow_thunderstorm =
      IconData(0xe95e, fontFamily: _kFontFam);
  static const IconData wi_night_alt_snow_wind =
      IconData(0xe95f, fontFamily: _kFontFam);
  static const IconData wi_night_alt_sprinkle =
      IconData(0xe960, fontFamily: _kFontFam);
  static const IconData wi_night_alt_storm_showers =
      IconData(0xe961, fontFamily: _kFontFam);
  static const IconData wi_night_alt_thunderstorm =
      IconData(0xe962, fontFamily: _kFontFam);
  static const IconData wi_night_clear =
      IconData(0xe963, fontFamily: _kFontFam);
  static const IconData wi_night_cloudy =
      IconData(0xe964, fontFamily: _kFontFam);
  static const IconData wi_night_cloudy_gusts =
      IconData(0xe965, fontFamily: _kFontFam);
  static const IconData wi_night_cloudy_high =
      IconData(0xe966, fontFamily: _kFontFam);
  static const IconData wi_night_cloudy_windy =
      IconData(0xe967, fontFamily: _kFontFam);
  static const IconData wi_night_fog = IconData(0xe968, fontFamily: _kFontFam);
  static const IconData wi_night_hail = IconData(0xe969, fontFamily: _kFontFam);
  static const IconData wi_night_lightning =
      IconData(0xe96a, fontFamily: _kFontFam);
  static const IconData wi_night_partly_cloudy =
      IconData(0xe96b, fontFamily: _kFontFam);
  static const IconData wi_night_rain = IconData(0xe96c, fontFamily: _kFontFam);
  static const IconData wi_night_rain_mix =
      IconData(0xe96d, fontFamily: _kFontFam);
  static const IconData wi_night_rain_wind =
      IconData(0xe96e, fontFamily: _kFontFam);
  static const IconData wi_night_showers =
      IconData(0xe96f, fontFamily: _kFontFam);
  static const IconData wi_night_sleet =
      IconData(0xe970, fontFamily: _kFontFam);
  static const IconData wi_night_sleet_storm =
      IconData(0xe971, fontFamily: _kFontFam);
  static const IconData wi_night_snow = IconData(0xe972, fontFamily: _kFontFam);
  static const IconData wi_night_snow_thunderstorm =
      IconData(0xe973, fontFamily: _kFontFam);
  static const IconData wi_night_snow_wind =
      IconData(0xe974, fontFamily: _kFontFam);
  static const IconData wi_night_sprinkle =
      IconData(0xe975, fontFamily: _kFontFam);
  static const IconData wi_night_storm_showers =
      IconData(0xe976, fontFamily: _kFontFam);
  static const IconData wi_night_thunderstorm =
      IconData(0xe977, fontFamily: _kFontFam);
  static const IconData wi_raindrop = IconData(0xe979, fontFamily: _kFontFam);
  static const IconData wi_raindrops = IconData(0xe97a, fontFamily: _kFontFam);

  static const IconData wi_rain_wind = IconData(0xe97c, fontFamily: _kFontFam);
  static const IconData wi_refresh = IconData(0xe97d, fontFamily: _kFontFam);
  static const IconData wi_refresh_alt =
      IconData(0xe97e, fontFamily: _kFontFam);
  static const IconData wi_sandstorm = IconData(0xe97f, fontFamily: _kFontFam);

  static const IconData wi_sleet = IconData(0xe981, fontFamily: _kFontFam);
  static const IconData wi_small_craft_advisory =
      IconData(0xe982, fontFamily: _kFontFam);
  static const IconData wi_smog = IconData(0xe983, fontFamily: _kFontFam);
  static const IconData wi_smoke = IconData(0xe984, fontFamily: _kFontFam);
  static const IconData wi_snow = IconData(0xe985, fontFamily: _kFontFam);
  static const IconData wi_snowflake_cold =
      IconData(0xe986, fontFamily: _kFontFam);
  static const IconData wi_snow_wind = IconData(0xe987, fontFamily: _kFontFam);
  static const IconData wi_solar_eclipse =
      IconData(0xe988, fontFamily: _kFontFam);
  static const IconData wi_stars = IconData(0xe98a, fontFamily: _kFontFam);
  static const IconData wi_storm_showers =
      IconData(0xe98b, fontFamily: _kFontFam);
  static const IconData wi_storm_warning =
      IconData(0xe98c, fontFamily: _kFontFam);
  static const IconData wi_strong_wind =
      IconData(0xe98d, fontFamily: _kFontFam);
  static const IconData wi_sunrise = IconData(0xe98e, fontFamily: _kFontFam);
  static const IconData wi_sunset = IconData(0xe98f, fontFamily: _kFontFam);
  static const IconData wi_thermometer =
      IconData(0xe990, fontFamily: _kFontFam);
  static const IconData wi_thermometer_exterior =
      IconData(0xe991, fontFamily: _kFontFam);
  static const IconData wi_thermometer_internal =
      IconData(0xe992, fontFamily: _kFontFam);
  static const IconData wi_time_1 = IconData(0xe994, fontFamily: _kFontFam);
  static const IconData wi_time_2 = IconData(0xe995, fontFamily: _kFontFam);
  static const IconData wi_time_3 = IconData(0xe996, fontFamily: _kFontFam);
  static const IconData wi_time_4 = IconData(0xe997, fontFamily: _kFontFam);
  static const IconData wi_time_5 = IconData(0xe998, fontFamily: _kFontFam);
  static const IconData wi_time_6 = IconData(0xe999, fontFamily: _kFontFam);
  static const IconData wi_time_7 = IconData(0xe99a, fontFamily: _kFontFam);
  static const IconData wi_time_8 = IconData(0xe99b, fontFamily: _kFontFam);
  static const IconData wi_time_9 = IconData(0xe99c, fontFamily: _kFontFam);
  static const IconData wi_time_10 = IconData(0xe99d, fontFamily: _kFontFam);
  static const IconData wi_time_11 = IconData(0xe99e, fontFamily: _kFontFam);
  static const IconData wi_time_12 = IconData(0xe99f, fontFamily: _kFontFam);
  static const IconData wi_tornado = IconData(0xe9a0, fontFamily: _kFontFam);
  static const IconData wi_train = IconData(0xe9a1, fontFamily: _kFontFam);
  static const IconData wi_tsunami = IconData(0xe9a2, fontFamily: _kFontFam);
  static const IconData wi_umbrella = IconData(0xe9a3, fontFamily: _kFontFam);
  static const IconData wi_volcano = IconData(0xe9a4, fontFamily: _kFontFam);
  static const IconData wi_wind_beaufort_0 =
      IconData(0xe9a5, fontFamily: _kFontFam);
  static const IconData wi_wind_beaufort_1 =
      IconData(0xe9a6, fontFamily: _kFontFam);
  static const IconData wi_wind_beaufort_2 =
      IconData(0xe9a7, fontFamily: _kFontFam);
  static const IconData wi_wind_beaufort_3 =
      IconData(0xe9a8, fontFamily: _kFontFam);
  static const IconData wi_wind_beaufort_4 =
      IconData(0xe9a9, fontFamily: _kFontFam);
  static const IconData wi_wind_beaufort_5 =
      IconData(0xe9aa, fontFamily: _kFontFam);
  static const IconData wi_wind_beaufort_6 =
      IconData(0xe9ab, fontFamily: _kFontFam);
  static const IconData wi_wind_beaufort_7 =
      IconData(0xe9ac, fontFamily: _kFontFam);
  static const IconData wi_wind_beaufort_8 =
      IconData(0xe9ad, fontFamily: _kFontFam);
  static const IconData wi_wind_beaufort_9 =
      IconData(0xe9ae, fontFamily: _kFontFam);
  static const IconData wi_wind_beaufort_10 =
      IconData(0xe9af, fontFamily: _kFontFam);
  static const IconData wi_wind_beaufort_11 =
      IconData(0xe9b0, fontFamily: _kFontFam);
  static const IconData wi_wind_beaufort_12 =
      IconData(0xe9b1, fontFamily: _kFontFam);
  static const IconData wi_wind_deg = IconData(0xe9b2, fontFamily: _kFontFam);
  static const IconData wi_windy = IconData(0xe9b3, fontFamily: _kFontFam);
  static const IconData wi_alien = IconData(0xe9b4, fontFamily: _kFontFam);
  static const IconData wi_barometer = IconData(0xe9b5, fontFamily: _kFontFam);
  static const IconData wi_celsius = IconData(0xe9b6, fontFamily: _kFontFam);
  static const IconData wi_cloud = IconData(0xe9b7, fontFamily: _kFontFam);
}
