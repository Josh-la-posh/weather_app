import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/screens/forecast.dart';
import 'package:weather_app/screens/home.dart';
import 'package:weather_app/screens/notification.dart';
import 'package:weather_app/services/weather_api_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          title: 'WeatherApp',
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
    // );
  }
}