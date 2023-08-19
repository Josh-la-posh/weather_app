import 'package:flutter/material.dart';
import 'package:weather_app/models/models.dart';
import 'package:weather_app/services/api_service.dart';

class HistoricalTimeSeriesProvider extends ChangeNotifier {
  final ApiService _apiService;

  HistoricalTimeSeriesProvider(this._apiService);

  List<HistoricalHourly>? _historicalTimeSeriesData;
  List<HistoricalHourly>? get historicalTimeSeriesData => _historicalTimeSeriesData;

  Future<void> fetchHistoricalTimeSeriesData(String locationQuery, String date, String units, String hour) async {
    try {
      final historicalWeatherData = await _apiService.getHistoricalWeather('4c55438c954a5b915cdd3507b1ee307e', locationQuery, date, units, hour);
      _historicalTimeSeriesData = historicalWeatherData.historical[date]?.hourly;
      notifyListeners();
    } catch (error) {
      print('Error fetching historical time series data: $error');
    }
  }
}