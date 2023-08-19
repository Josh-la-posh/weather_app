import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/routes/names.dart';
import 'package:weather_app/screens/forecast.dart';
import 'package:weather_app/screens/home.dart';
import 'package:weather_app/screens/notification.dart';
import 'package:weather_app/screens/search.dart';

Map<String, WidgetBuilder> routes = {
  HOME_SCREEN: (context) => const HomePage(),
  NOTIFICATION_SCREEN: (context) => const NotificationScreen(),
  // FORECAST_SCREEN: (context) => const ForecastScreen(),
  SEARCH_SCREEN: (context) => const SearchPage()

};
