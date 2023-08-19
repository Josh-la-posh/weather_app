import 'package:flutter/material.dart';
import 'package:weather_app/models/models.dart';
import 'package:weather_app/services/api_service.dart';

class ForecastProvider with ChangeNotifier {
  final ApiService _apiService;

  ForecastProvider(this._apiService);

  ForecastResponse? _forecastData;
  ForecastResponse? get forecastData => _forecastData;

  Future<void> fetchCurrentWeather(String locationQuery, String days, String units) async {
    try {
      final response = await _apiService.getForecast('4c55438c954a5b915cdd3507b1ee307e', locationQuery, days, units);
      print('API response: $response');

      if (response != null) {
        _forecastData = response;
        notifyListeners();
      } else {
        print('API response is null');
      }
    } catch (error) {
      print('Error fetching weather data: $error');
    }
  }
}