import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/current_weather_provider.dart';
import 'package:weather_app/provider/historical_weather_provider.dart';
import 'package:weather_app/provider/location_autocomplete_provider.dart';
import 'package:weather_app/provider/temperature_unit.dart';
import 'package:weather_app/provider/time_series_provider.dart';
import 'package:weather_app/provider/forecast_provider.dart';
import 'package:weather_app/screens/home.dart';
import 'package:weather_app/services/api_service.dart';

void main() {
  Dio dio = Dio();
  dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider<CurrentWeatherProvider>(
        create: (context) => CurrentWeatherProvider(ApiService(Dio())),
      ),
      ChangeNotifierProvider<ForecastProvider>(
        create: (context) => ForecastProvider(ApiService(Dio())),
      ),
      ChangeNotifierProvider<HistoricalWeatherProvider>(
        create: (context) => HistoricalWeatherProvider(ApiService(Dio())),
      ),
      ChangeNotifierProvider<HistoricalTimeSeriesProvider>(
        create: (context) => HistoricalTimeSeriesProvider(ApiService(Dio())),
      ),
      ChangeNotifierProvider<LocationAutocompleteProvider>(
        create: (context) => LocationAutocompleteProvider(ApiService(Dio())),
      ),
      ChangeNotifierProvider<TemperatureUnitProvider>(
        create: (context) => TemperatureUnitProvider(),
      ),
    ],
    child: MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Weather App',
            debugShowCheckedModeBanner: false,
            home: HomePage(cityName: 'New York'),
          );
  }
}