

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/historical_weather_provider.dart';
import 'package:weather_app/provider/location_autocomplete_provider.dart';
import 'package:weather_app/provider/temperature_unit.dart';
import 'package:weather_app/provider/time_series_provider.dart';
import 'package:weather_app/provider/weather_provider.dart';
import 'package:weather_app/screens/home.dart';
import 'package:weather_app/services/api_service.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider<WeatherProvider>(
        create: (context) => WeatherProvider(ApiService(dio)),
      ),
      ChangeNotifierProvider<HistoricalWeatherProvider>(
        create: (context) => HistoricalWeatherProvider(ApiService(dio)),
      ),
      ChangeNotifierProvider<HistoricalTimeSeriesProvider>(
        create: (context) => HistoricalTimeSeriesProvider(ApiService(dio)),
      ),
      ChangeNotifierProvider<LocationAutocompleteProvider>(
        create: (context) => LocationAutocompleteProvider(ApiService(dio)),
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
        return ChangeNotifierProvider(
          create: (context) => WeatherProvider(ApiService(Dio())),
          child: MaterialApp(
            title: 'Weather App',
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          ),
        );
    // );
  }
}