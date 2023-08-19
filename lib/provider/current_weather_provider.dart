import 'package:flutter/material.dart';
import 'package:weather_app/models/models.dart';
import 'package:weather_app/services/api_service.dart';

class CurrentWeatherProvider extends ChangeNotifier {
  final ApiService _apiService;

  CurrentWeatherProvider(this._apiService);

  WeatherResponse? _weatherData;
  WeatherResponse? get weatherData => _weatherData;

  Future<void> fetchCurrentWeatherData(String locationQuery) async {
    try {
      final response = await _apiService.getCurrentWeather('4c55438c954a5b915cdd3507b1ee307e', locationQuery);
      if (response != null) {
        _weatherData = response;
        notifyListeners();
      } else {
        print('API response is null');
      }
    } catch (error) {
      print("Error fetching current weather: $error");
    }
  }
}