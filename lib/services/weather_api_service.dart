import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'weather_api_service.g.dart';

@RestApi(baseUrl: "http://api.weatherstack.com/")
abstract class WeatherApiService {
  factory WeatherApiService(Dio dio, {String baseUrl}) = _WeatherApiService;

  @GET("current")
  Future<WeatherDataResponse> getWeather(
      @Query("access_key") String apiKey,
      @Query("query") String query,
      );
  @GET("forecast")
  Future<ForecastResponse> getForecast(
      @Query("access_key") String apiKey,
      @Query("query") String query,
      );
}

@JsonSerializable()
class WeatherDataResponse {
  final Location location;
  final CurrentWeather current;

  WeatherDataResponse({
    required this.location,
    required this.current,
  });

  factory WeatherDataResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataResponseFromJson(json);
}

@JsonSerializable()
class Location {
  final String name;
  final String localtime;

  Location({required this.name, required this.localtime});

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@JsonSerializable()
class CurrentWeather {
  final double temperature;
  final List<String> weather_icons;
  final double wind_speed;
  final double humidity;

  CurrentWeather({
    required this.temperature,
    required this.weather_icons,
    required this.wind_speed,
    required this.humidity
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);
}


@JsonSerializable()
class ForecastResponse {
  final Location location;
  final List<ForecastDay> forecast;

  ForecastResponse({required this.location, required this.forecast});

  factory ForecastResponse.fromJson(Map<String, dynamic> json) =>
      _$ForecastResponseFromJson(json);
}

@JsonSerializable()
class ForecastDay {
  final String date;
  final DayCondition day;
  final DayCondition night;

  ForecastDay({required this.date, required this.day, required this.night});

  factory ForecastDay.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayFromJson(json);
}

@JsonSerializable()
class DayCondition {
  final double maxtemp;
  final double mintemp;
  final List<String> conditionIcons;

  DayCondition(
      {required this.maxtemp, required this.mintemp, required this.conditionIcons});

  factory DayCondition.fromJson(Map<String, dynamic> json) =>
      _$DayConditionFromJson(json);
}

