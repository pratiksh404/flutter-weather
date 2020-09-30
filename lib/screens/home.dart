import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Static constant properties
  static const String temperature_unit = "c";
  static const String image_directory = "assets/images";
  String weather = "$image_directory/sunny.gif";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg1.png"),
            fit: BoxFit.cover
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Temperature Section
              Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // Temperature
                      Text(
                        "23",
                        style: TextStyle(
                          fontSize: 200.0,
                          fontWeight: FontWeight.w100
                        ),
                      ),
                      // Celsius and Degree Notation
                      Container(
                        height: 150.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "o",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              temperature_unit,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Weather Section
              Expanded(
              child:   Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(weather),
                    )
                ),
              ),
            ),
              // Weather Detail
              Expanded(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        //Location
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            // Detail Label
                            Row(
                              children: <Widget>[
                                Icon(
                                    Icons.location_on
                                ),
                                Text(
                                  "Location",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                            // Detail Information
                            Text(
                                "Kathmandu",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w100
                              ),
                            )
                          ],
                        ),
                        // Humidity
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            // Detail Label
                            Row(
                              children: <Widget>[
                                Icon(
                                    Icons.blur_on
                                ),
                                Text(
                                  "Humidity",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                            // Detail Information
                            Text(
                              "70",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w100
                              ),
                            )
                          ],
                        ),
                        // Wind Speed
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            // Detail Label
                            Row(
                              children: <Widget>[
                                Icon(
                                    Icons.filter_tilt_shift
                                ),
                                Text(
                                  "Wind",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                            // Detail Information
                            Text(
                              "120",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w100
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
