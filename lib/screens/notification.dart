import 'package:flutter/material.dart';
import 'package:weather_app/widgets/notification_view.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(140, 140, 140, 0.20),
        body: Padding(
          padding: const EdgeInsets.only(top: 72.12),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(17.078),
                  topRight: Radius.circular(17.078),
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 51.06,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17.08),
                  child: Text('Your notification', style: TextStyle(
                    color: Color.fromRGBO(68, 78, 114, 1),
                    fontFamily: 'Overpass',
                    fontWeight: FontWeight.w900,
                    fontSize: 13.662,
                    fontStyle: FontStyle.normal,
                  ),),
                ),
                SizedBox(height: 10.25,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17.08),
                  child: Text('New', style: TextStyle(
                    color: Color.fromRGBO(68, 78, 114, 1),
                    fontFamily: 'Overpass',
                    fontWeight: FontWeight.w400,
                    fontSize: 6.831,
                    fontStyle: FontStyle.normal,
                  ),),
                ),
                SizedBox(height: 4.55,),
                NotificationWidget(date: '10 minutes', summary: 'A sunny day in your location, consider wearing your UV protection', color: Color.fromRGBO(149, 229, 255, 0.28),),
                SizedBox(height: 12.55,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17.08),
                  child: Text('Earlier', style: TextStyle(
                    color: Color.fromRGBO(131, 139, 170, 1),
                    fontFamily: 'Overpass',
                    fontWeight: FontWeight.w400,
                    fontSize: 6.831,
                    fontStyle: FontStyle.normal,
                  ),),
                ),
                NotificationWidget(date: '1 day', summary: "A cloudy day will occur all day long, don't worry about the heat of the sun"),
                NotificationWidget(date: '2 days', summary: "Potential for rain today is 84%, don't forget to bring your umbrella.")
              ],
            ),
          ),
        )
    );
  }
}
