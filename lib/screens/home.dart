import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/assets/icons/svg.dart';
import 'package:weather_app/provider/current_weather_provider.dart';
import 'package:weather_app/provider/forecast_provider.dart';
import 'package:weather_app/screens/forecast.dart';
import 'package:weather_app/screens/notification.dart';
import 'package:weather_app/screens/search.dart';

class HomePage extends StatelessWidget {
  final String cityName;

  const HomePage({
    required this.cityName,
    Key? key,
  }): super(key:key);

  // String temperatureUnit = "C";

  @override
  Widget build(BuildContext context) {
    // final weatherProvider = Provider.of<WeatherProvider>(context);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
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
        child:
        // weatherProvider.weatherData == null ? CircularProgressIndicator() :
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 21.67, right: 20.98, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 41.25,),
                Consumer<CurrentWeatherProvider>(
                    builder: (context, weatherProvider, _) {
                      if (weatherProvider.weatherData != null) {
                        final location = weatherProvider.weatherData?.location;
                        final current = weatherProvider.weatherData?.current;
                        return Column(
                          children: [
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
                                      const SizedBox(width: 13.98,),
                                      Text('${location?.name}', style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Overpass',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16.781,
                                        fontStyle: FontStyle.normal,
                                      ),),
                                      const SizedBox(width: 11.89,),
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
                            const SizedBox(height: 46.15,),
                            Image.network(current!.weather_icons[0]),
                            const SizedBox(height: 77.18,),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const ForecastScreen()));
                              },
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: const Color.fromRGBO(255, 255, 255, 0.30),
                                    borderRadius: const BorderRadius.all(Radius.circular(13.984)),
                                    border: Border.all(
                                        color: Colors.white,
                                        width: 1.0
                                    )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 11.89, bottom: 18.18),
                                  child: Column(
                                    children: [
                                      Text('${location?.localtime}', style: const TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Overpass',
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 12.585
                                      ),),
                                      Text('${current.temperature}°C', style: const TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Overpass',
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 69.919
                                      ),),
                                      Text('${current.weather_descriptions[0]}', style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Overpass',
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16.781
                                      ),),
                                      const SizedBox(height: 18.88,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Expanded(child: Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              WindWhiteImage(),
                                              const SizedBox(width: 13.98,),
                                              const Text('Wind', style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Overpass',
                                                  fontWeight: FontWeight.w400,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 12.585
                                              ),),
                                              const SizedBox(width: 16.08,),
                                            ],
                                          )),
                                          Expanded(child: Row(
                                            children: [
                                              const Text('|', style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Overpass',
                                                  fontWeight: FontWeight.w300,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 12.585
                                              ),),
                                              const SizedBox(width: 13.98,),
                                              Text('${current.wind_speed} km/h', style: const TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Overpass',
                                                  fontWeight: FontWeight.w400,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 12.585
                                              ),),
                                            ],))
                                        ],
                                      ),
                                      const SizedBox(height: 13.98,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Expanded(child: Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              HumWhiteIcon(),
                                              const SizedBox(width: 13.98,),
                                              const Text('Hum', style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Overpass',
                                                  fontWeight: FontWeight.w400,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 12.585
                                              ),),
                                              const SizedBox(width: 16.08,),
                                            ],
                                          )),
                                          Expanded(child: Row(
                                            children: [
                                              const Text('|', style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Overpass',
                                                  fontWeight: FontWeight.w300,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 12.585
                                              ),),
                                              const SizedBox(width: 13.98,),
                                              Text('${current.humidity}%', style: const TextStyle(
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
                        );
                      } else {
                        return CircularProgressIndicator();
                      }
                    },
                ),

              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Retrieve the WeatherProvider instance
          final weatherProvider = Provider.of<CurrentWeatherProvider>(context, listen: false);

          // Call fetchWeatherData with the required parameters
          weatherProvider.fetchCurrentWeatherData(cityName);
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
