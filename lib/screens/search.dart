import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/assets/icons/svg.dart';
import 'package:weather_app/widgets/list_tile.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('lib/assets/images/MapsicleMap.png'),
                  fit: BoxFit.cover
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 510,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(17),
                bottomRight: Radius.circular(17),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 33.59, left: 17.08, right: 17.08),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search here',
                      prefixIcon: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          // Handle back button action
                          Navigator.of(context).pop();
                        },
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.mic),
                        onPressed: () {
                          // Handle microphone button action
                        },
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 23.34,),
                  Text('Recent search', style: TextStyle(
                      fontFamily: 'Overpass',
                      fontWeight: FontWeight.w700,
                      fontSize: 7.97,
                      fontStyle: FontStyle.normal,
                      color: Color.fromRGBO(68, 78, 114, 1)
                  ),),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: CustomListTile(leading: SunIcon(), title: 'Surabaya', color: Color.fromRGBO(68, 78, 114, 1), size: 10.247, subtitle: '32', size2: 7.97,),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
        backgroundColor: Colors.white,
        child: const Icon(Icons.map),
      ),
    );
  }
}
