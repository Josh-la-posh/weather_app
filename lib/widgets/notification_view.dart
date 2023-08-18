import 'package:flutter/material.dart';
import 'package:weather_app/assets/icons/svg.dart';

class NotificationWidget extends StatelessWidget {
  final String date, summary;
  final Color? color;
  const NotificationWidget({
    required this.date,
    required this.summary,
    this.color,
    super.key
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.649,
      color: color,
      child: ListTile(
        onTap: (){},
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SunIcon(),
            SizedBox(width: 17.08,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(date + ' ago', style: TextStyle(
                    color: Color.fromRGBO(68, 78, 114, 1),
                    fontFamily: 'Overpass',
                    fontWeight: FontWeight.w300,
                    fontSize: 6.831,
                    fontStyle: FontStyle.normal,
                  ),),
                  Text(summary, style: TextStyle(
                    color: Color.fromRGBO(68, 78, 114, 1),
                    fontFamily: 'Overpass',
                    fontWeight: FontWeight.w700,
                    fontSize: 7.97,
                    fontStyle: FontStyle.normal,
                  ),),
                ],
              ),
            ),
            SizedBox(width: 12.52,),
            DropdownBlackIcon()
          ],
        ),
      ),
    );
  }
}
