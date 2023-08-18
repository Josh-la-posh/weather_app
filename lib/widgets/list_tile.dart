import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Widget leading;
  final String title;
  final String subtitle;
  final Color color;
  final double size;
  final double size2;

  CustomListTile({
    required this.leading,
    required this.title,
    required this.color,
    required this.size,
    required this.size2,
    required this.subtitle,
super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Adjust background color if needed
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0), // Remove default padding
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Transform.translate(
            offset: Offset(-15, 0),
            child: Row(
              children: [
                leading,
                SizedBox(width: 10,),
                Text(title, style: TextStyle(
                  color: color,
                  fontFamily: 'Overpass',
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  fontSize: size,
                ),),
              ],
            ),
          ),
          Text(subtitle, style: TextStyle(
            color: color,
            fontFamily: 'Overpass',
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: size2,
          ),),
          // trailing,
        ],
      ),
    );
  }
}

