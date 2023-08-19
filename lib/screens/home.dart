import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/assets/icons/svg.dart';
import 'package:weather_app/models/models.dart';
import 'package:weather_app/provider/weather_provider.dart';
import 'package:weather_app/screens/forecast.dart';
import 'package:weather_app/screens/notification.dart';
import 'package:weather_app/screens/search.dart';
import 'package:weather_app/services/api_service.dart';

class HomePage extends StatefulWidget {

  const HomePage({
    // required this.apiService,
    super.key
});

  @override
  State<HomePage> createState() => _HomePageState();
}

final dio = Dio();
final apiService = ApiService(dio);

class _HomePageState extends State<HomePage> {

  String query = 'New York';
  String apiKey = '4c55438c954a5b915cdd3507b1ee307e';
  WeatherResponse? weather;
  String temperatureUnit = "C";
  bool showHistoricalData = false;


  void toggleTemperatureUnit() {
    setState(() {
      temperatureUnit = temperatureUnit == "C" ? "F" : "C";
    });
  }


  @override
  Widget build(BuildContext context) {
    final weatherProvider = Provider.of<WeatherProvider>(context);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF47bFDF),
                  Color(0xFF4A91FF)
                ],
                stops: [
                  0,
                  1
                ]
            )
        ),
        child: weather == null ? CircularProgressIndicator() : SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 21.67, right: 20.98, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 41.25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchPage()));
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MapWhiteIcon(),
                          SizedBox(width: 13.98,),
                          Text('${weatherProvider.weatherData?.location.name}', style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Overpass',
                            fontWeight: FontWeight.w700,
                            fontSize: 16.781,
                            fontStyle: FontStyle.normal,
                          ),),
                          SizedBox(width: 11.89,),
                          DropdownWhiteIcon()
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationScreen()));
                      },
                      child: NotificationWhiteIcon(),
                    )
                  ],
                ),
                SizedBox(height: 46.15,),
                // CloudHomeIcon(),
                Image.network(weatherProvider.weatherData!.current.weather_icons[0]),
                SizedBox(height: 77.18,),
                GestureDetector(
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const ForecastScreen()));
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.30),
                        borderRadius: BorderRadius.all(Radius.circular(13.984)),
                        border: Border.all(
                            color: Colors.white,
                            width: 1.0
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 11.89, bottom: 18.18),
                      child: Column(
                        children: [
                          Text('${weatherProvider.weatherData?.location.localtime}', style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Overpass',
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 12.585
                          ),),
                          Text('${weatherProvider.weatherData?.current.temperature.toString()} °C', style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Overpass',
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 69.919
                          ),),
                          Text('Cloudy', style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Overpass',
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              fontSize: 16.781
                          ),),
                          SizedBox(height: 18.88,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  WindWhiteImage(),
                                  SizedBox(width: 13.98,),
                                  Text('Wind', style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Overpass',
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.585
                                  ),),
                                  SizedBox(width: 16.08,),
                                ],
                              )),
                              Expanded(child: Row(
                                children: [
                                  Text('|', style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Overpass',
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.585
                                  ),),
                                  SizedBox(width: 13.98,),
                                  Text('${weatherProvider.weatherData?.current.wind_speed} km/h', style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Overpass',
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.585
                                  ),),
                                ],))
                            ],
                          ),
                          SizedBox(height: 13.98,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  HumWhiteIcon(),
                                  SizedBox(width: 13.98,),
                                  Text('Hum', style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Overpass',
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.585
                                  ),),
                                  SizedBox(width: 16.08,),
                                ],
                              )),
                              Expanded(child: Row(
                                children: [
                                  Text('|', style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Overpass',
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.585
                                  ),),
                                  const SizedBox(width: 13.98,),
                                  Text('${weatherProvider.weatherData!.current.humidity}%', style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Overpass',
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.585
                                  ),),
                                ],))
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

}
