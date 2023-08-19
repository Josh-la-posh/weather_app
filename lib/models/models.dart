import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable()
class WeatherResponse {
  final Request request;
  final Location location;
  final CurrentWeather current;

  WeatherResponse({
    required this.request,
    required this.location,
    required this.current
});

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);
}

@JsonSerializable()
class ForecastResponse {
  final Request request;
  final Location location;
  final CurrentWeather current;
  final Map<String, ForecastData> forecast;

  ForecastResponse({
    required this.request,
    required this.location,
    required this.current,
    required this.forecast,
  });

  factory ForecastResponse.fromJson(Map<String, dynamic> json) =>
      _$ForecastResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastResponseToJson(this);
}

@JsonSerializable()
class Request {
  final String type;
  final String query;
  final String language;
  final String unit;

  Request({
    required this.type,
    required this.query,
    required this.language,
    required this.unit,
  });

  factory Request.fromJson(Map<String, dynamic> json) =>
      _$RequestFromJson(json);

  Map<String, dynamic> toJson() => _$RequestToJson(this);
}

@JsonSerializable()
class Location {
  final String name;
  final String country;
  final String region;
  final String lat;
  final String lon;
  final String timezone_id;
  final String localtime;
  final int localtime_epoch;
  final String utc_offset;

  Location({
    required this.name,
    required this.country,
    required this.region,
    required this.lat,
    required this.lon,
    required this.timezone_id,
    required this.localtime,
    required this.localtime_epoch,
    required this.utc_offset,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class CurrentWeather {
  final String observation_time;
  final int temperature;
  final int weather_code;
  final List<String> weather_icons;
  final List<String> weather_descriptions;
  final int wind_speed;
  final int wind_degree;
  final String wind_dir;
  final int pressure;
  final int precip;
  final int humidity;
  final int cloudcover;
  final int feelslike;
  final int uv_index;
  final int visibility;

  CurrentWeather({
    required this.observation_time,
    required this.temperature,
    required this.weather_code,
    required this.weather_icons,
    required this.weather_descriptions,
    required this.wind_speed,
    required this.wind_degree,
    required this.wind_dir,
    required this.pressure,
    required this.precip,
    required this.humidity,
    required this.cloudcover,
    required this.feelslike,
    required this.uv_index,
    required this.visibility,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentWeatherToJson(this);
}

@JsonSerializable()
class ForecastData {
  final String date;
  final ForecastDay forecast;

  ForecastData({
    required this.date,
    required this.forecast,
  });

  factory ForecastData.fromJson(Map<String, dynamic> json) =>
      _$ForecastDataFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastDataToJson(this);
}

@JsonSerializable()
class ForecastDay {
  final String date;
  final Astro astro;
  final int mintemp;
  final int maxtemp;
  final int avgtemp;
  final int totalsnow;
  final double sunhour;
  final int uv_index;
  final List<ForecastHourly> hourly;

  ForecastDay({
    required this.date,
    required this.astro,
    required this.mintemp,
    required this.maxtemp,
    required this.avgtemp,
    required this.totalsnow,
    required this.sunhour,
    required this.uv_index,
    required this.hourly,
  });

  factory ForecastDay.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastDayToJson(this);
}

@JsonSerializable()
class Astro {
  final String sunrise;
  final String sunset;
  final String moonrise;
  final String moonset;
  final String moon_phase;
  final int moon_illumination;

  Astro({
    required this.sunrise,
    required this.sunset,
    required this.moonrise,
    required this.moonset,
    required this.moon_phase,
    required this.moon_illumination,
  });

  factory Astro.fromJson(Map<String, dynamic> json) => _$AstroFromJson(json);

  Map<String, dynamic> toJson() => _$AstroToJson(this);
}

@JsonSerializable()
class ForecastHourly {
  final String time;
  final int temperature;
  final int weather_code;
  final List<String> weather_icons;
  final List<String> weather_descriptions;

  ForecastHourly({
    required this.time,
    required this.temperature,
    required this.weather_code,
    required this.weather_icons,
    required this.weather_descriptions,
  });

  factory ForecastHourly.fromJson(Map<String, dynamic> json) =>
      _$ForecastHourlyFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastHourlyToJson(this);
}

@JsonSerializable()
class HistoricalWeatherResponse {
  final Request request;
  final Location location;
  final CurrentWeather current;
  final Map<String, HistoricalData> historical;

  HistoricalWeatherResponse({
    required this.request,
    required this.location,
    required this.current,
    required this.historical,
  });

  factory HistoricalWeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$HistoricalWeatherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HistoricalWeatherResponseToJson(this);
}

@JsonSerializable()
class HistoricalData {
  final String date;
  final Astro astro;
  final int mintemp;
  final int maxtemp;
  final int avgtemp;
  final int totalsnow;
  final double sunhour;
  final int uv_index;
  final List<HistoricalHourly> hourly;

  HistoricalData({
    required this.date,
    required this.astro,
    required this.mintemp,
    required this.maxtemp,
    required this.avgtemp,
    required this.totalsnow,
    required this.sunhour,
    required this.uv_index,
    required this.hourly,
  });

  factory HistoricalData.fromJson(Map<String, dynamic> json) =>
      _$HistoricalDataFromJson(json);

  Map<String, dynamic> toJson() => _$HistoricalDataToJson(this);
}

@JsonSerializable()
class HistoricalHourly {
  final String time;
  final int temperature;
  final int wind_speed;
  final int wind_degree;
  final String wind_dir;
  final int weather_code;
  final List<String> weather_icons;
  final List<String> weather_descriptions;
  final int precip;
  final int humidity;
  final int visibility;
  final int pressure;
  final int cloudcover;
  final int heatindex;
  final int dewpoint;
  final int windchill;
  final int windgust;
  final int feelslike;
  final int chanceofrain;
  final int chanceofremdry;
  final int chanceofwindy;
  final int chanceofovercast;
  final int chanceofsunshine;
  final int chanceoffrost;
  final int chanceofhightemp;
  final int chanceoffog;
  final int chanceofsnow;
  final int chanceofthunder;
  final int uv_index;

  HistoricalHourly({
    required this.time,
    required this.temperature,
    required this.wind_speed,
    required this.wind_degree,
    required this.wind_dir,
    required this.weather_code,
    required this.weather_icons,
    required this.weather_descriptions,
    required this.precip,
    required this.humidity,
    required this.visibility,
    required this.pressure,
    required this.cloudcover,
    required this.heatindex,
    required this.dewpoint,
    required this.windchill,
    required this.windgust,
    required this.feelslike,
    required this.chanceofrain,
    required this.chanceofremdry,
    required this.chanceofwindy,
    required this.chanceofovercast,
    required this.chanceofsunshine,
    required this.chanceoffrost,
    required this.chanceofhightemp,
    required this.chanceoffog,
    required this.chanceofsnow,
    required this.chanceofthunder,
    required this.uv_index,
  });

  factory HistoricalHourly.fromJson(Map<String, dynamic> json) =>
      _$HistoricalHourlyFromJson(json);

  Map<String, dynamic> toJson() => _$HistoricalHourlyToJson(this);
}

@JsonSerializable()
class AutocompleteResult {
  final String name, country, region, lon, lat, timezoneId, utcOffset;

  AutocompleteResult({
    required this.name,
    required this.country,
    required this.region,
    required this.lat,
    required this.lon,
    required this.timezoneId,
    required this.utcOffset
});

  factory AutocompleteResult.fromJson(Map<String, dynamic> json) {
    return AutocompleteResult(name: json['name'], country: json['country'], region: json['region'], lat: json['lat'], lon: json['lon'], timezoneId: json['timezone_id'], utcOffset: json['utc_offset']);
  }
}
