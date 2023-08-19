import 'package:flutter/material.dart';
import 'package:weather_app/models/models.dart';
import 'package:weather_app/services/api_service.dart';

class LocationAutocompleteProvider extends ChangeNotifier {
  final ApiService _apiService;

  LocationAutocompleteProvider(this._apiService);

  List<AutocompleteResult> _autocompleteResults = [];
  List<AutocompleteResult> get autocompleteResults => _autocompleteResults;

  Future<void> fetchAutocompleteResult(String query) async {
    try {
      final response = await _apiService.getAutocompleteResults('4c55438c954a5b915cdd3507b1ee307e', query);
      _autocompleteResults = response['results']
      .map<AutocompleteResult>((json) => AutocompleteResult.fromJson(json)).toList();
      notifyListeners();
    } catch (error) {
      print('Error fetching autocomplete results: $error');
    }
  }
}