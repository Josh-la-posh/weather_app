import 'package:flutter/material.dart';
import 'package:weather_app/assets/icons/svg.dart';

class ForecastWidget extends StatefulWidget {
  final String temp;
  final String time;
  const ForecastWidget({
    required this.temp,
    required this.time,
    super.key
});

  @override
  State<ForecastWidget> createState() => _ForecastWidgetState();
}

class _ForecastWidgetState extends State<ForecastWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("${widget.temp}°C", style: TextStyle(
          color: Colors.white,
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w400,
          fontSize: 10.247,
          fontStyle: FontStyle.normal,
        ),),
        SizedBox(height: 13.09,),
        Cloud1(),
        SizedBox(height: 13.09,),
        Text(widget.time, style: TextStyle(
          color: Colors.white,
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w400,
          fontSize: 10.247,
          fontStyle: FontStyle.normal,
        ),),
      ],
    );
  }
}
