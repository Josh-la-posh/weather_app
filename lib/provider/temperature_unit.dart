import 'package:flutter/material.dart';

enum TemperatureUnit {celcius, fahrenheit}

class TemperatureUnitProvider extends ChangeNotifier {
  TemperatureUnit _selectedUnit = TemperatureUnit.celcius;
  TemperatureUnit get selectedUnit => _selectedUnit;

  void setTemperatureUnit(TemperatureUnit unit) {
    _selectedUnit = unit;
    notifyListeners();
  }
}