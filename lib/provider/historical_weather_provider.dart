import 'package:flutter/material.dart';
import 'package:weather_app/models/models.dart';
import 'package:weather_app/services/api_service.dart';

class HistoricalWeatherProvider extends ChangeNotifier {
  final ApiService _apiService;

  HistoricalWeatherProvider(this._apiService);

  HistoricalWeatherResponse? _historicalWeatherData;
  HistoricalWeatherResponse? get historicalWeatherData => _historicalWeatherData;

  Future<void> fetchHistoricalWeatherData(String locationQuery, String date, String units, String hour) async {
    try {
      _historicalWeatherData = await _apiService.getHistoricalWeather('4c55438c954a5b915cdd3507b1ee307e', locationQuery, date, units, hour);
      notifyListeners();
    } catch (error) {
      print('Error fetching historical weather data: $error');
    }
  }
}