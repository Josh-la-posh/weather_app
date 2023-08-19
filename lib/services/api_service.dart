import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app/models/models.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://api.weatherstack.com')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('/current')
  Future<WeatherResponse> getCurrentWeather(
      @Query('access_key') String apiKey,
      @Query('query') String query,
      @Query('units') String units,
      );

  @GET('/historical')
  Future<HistoricalWeatherResponse> getHistoricalWeather(
      @Query('access_key') String apiKey,
      @Query('query') String query,
      @Query('historical_date') String date,
      @Query('units') String units,
      @Query('hourly') String hour,
      );

  @GET('/forecast')
  Future<WeatherResponse> getForecast(
      @Query('access_key') String apiKey,
      @Query('query') String query,
      @Query('forecast_days') String days,
      @Query('units') String units,
      );

  @GET('/autocomplete')
  Future<dynamic> getAutocompleteResults(
      @Query('access_key') String apiKey,
      @Query('query') String query,
      );
}
