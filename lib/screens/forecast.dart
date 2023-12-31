import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/assets/icons/svg.dart';
import 'package:weather_app/models/models.dart';
import 'package:weather_app/provider/forecast_provider.dart';
import 'package:weather_app/provider/time_series_provider.dart';
import 'package:weather_app/widgets/forecast_view.dart';

class ForecastScreen extends StatefulWidget {
  const ForecastScreen({Key? key}) : super(key: key);

  @override
  State<ForecastScreen> createState() => _ForecastScreenState();
}

class _ForecastScreenState extends State<ForecastScreen> {

  bool showHistoricalData = false;

  @override
  Widget build(BuildContext context) {
    final forecastProvider = Provider.of<ForecastProvider>(context);
    final historicalProvider = Provider.of<HistoricalTimeSeriesProvider>(context);
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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 29.6,),
                  Padding(
                        padding: const EdgeInsets.only(left: 21.67, right: 20.98),
                        child: Transform.translate(
                          offset: Offset(-8.0, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ArrowBackIcon(),
                                    Text('Back', style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Overpass',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13.662,
                                      fontStyle: FontStyle.normal,
                                    ),),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen()));
                                },
                                child: SettingsIcon(),
                              )
                            ],
                          ),
                        ),
                      ),
                  SizedBox(height: 27.89,),
                  Padding(
                        padding: const EdgeInsets.only(left: 21.67, right: 20.98),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Today', style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Overpass',
                              fontWeight: FontWeight.w900,
                              fontSize: 13.662,
                              fontStyle: FontStyle.normal,
                            ),),
                            Text('Sep, 12', style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Overpass',
                              fontWeight: FontWeight.w400,
                              fontSize: 10.247,
                              fontStyle: FontStyle.normal,
                            ),),
                          ],
                        ),
                      ),
                  SizedBox(height: 18.22,),
                  SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ForecastWidget(temp: '29', time: '15:00',),
                            ForecastWidget(temp: '26', time: '16:00',),
                            ForecastWidget(temp: '24', time: '17:00',),
                            ForecastWidget(temp: '23', time: '18:00',),
                            ForecastWidget(temp: '22', time: '19:00',),
                          ],
                        ),
                      ),
                  SizedBox(height: 29.03,),
                  Padding(
                        padding: const EdgeInsets.only(left: 21.67, right: 20.98),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Next Forecast', style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Overpass',
                              fontWeight: FontWeight.w900,
                              fontSize: 13.662,
                              fontStyle: FontStyle.normal,
                            ),),
                            CalendarIcon()
                          ],
                        ),
                      ),
                  SizedBox(height: 12.52,),
                  // FutureBuilder<WeatherResponse>(
                      //     future: weatherProvider.weatherData!.forecast {
                      //       if (snapshot.connectionState == ConnectionState.waiting) {
                      //         return CircularProgressIndicator();
                      //       } else if (snapshot.hasError) {
                      //         return Text('No forecast data available', style: TextStyle(
                      //           color: Colors.white,
                      //           fontFamily: 'Overpass',
                      //           fontWeight: FontWeight.w700,
                      //           fontSize: 14.247,
                      //           fontStyle: FontStyle.normal,
                      //         ),);
                      //       } else {
                      //         final forecast = snapshot.data!.forecast;
                      //         return
                      //         Column(
                      //           children: weatherProvider.forecastData?.forecast.map((day) {
                      //             return Column(
                      //               children: [
                      //                 Row(
                      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //                   children: [
                      //                     Text('${day.date}', style: TextStyle(
                      //                       color: Colors.white,
                      //                       fontFamily: 'Overpass',
                      //                       fontWeight: FontWeight.w700,
                      //                       fontSize: 10.247,
                      //                       fontStyle: FontStyle.normal,
                      //                     ),),
                      //                     Image.network(
                      //                       day.day.conditionIcons[0],
                      //                       width: 50,
                      //                       height: 50,
                      //                     ),
                      //                     Text('${day} °C', style: TextStyle(
                      //                       color: Colors.white,
                      //                       fontFamily: 'Overpass',
                      //                       fontWeight: FontWeight.w700,
                      //                       fontSize: 10.247,
                      //                       fontStyle: FontStyle.normal,
                      //                     ),),
                      //                   ],
                      //                 ),
                      //                 SizedBox(height: 3.98,),
                      //               ],
                      //             );)
                      //           },
                      //         ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
