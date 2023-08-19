import 'package:flutter/material.dart';
import 'package:weather_app/models/models.dart';
import 'package:weather_app/services/api_service.dart';

class WeatherProvider with ChangeNotifier {
  final ApiService _apiService;

  WeatherProvider(this._apiService);

  WeatherResponse? _weatherData;
  WeatherResponse? get weatherData => _weatherData;

  Future<void> fetchWeatherData(String locationQuery, String units) async {
    try {
      _weatherData = await _apiService.getCurrentWeather('4c55438c954a5b915cdd3507b1ee307e', locationQuery, units);
      notifyListeners();
    } catch (error) {
      print('Error fetching weather data: $error');
    }
  }
}