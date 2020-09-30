import 'package:flutter/material.dart';
import 'package:weather/screens/home.dart';

void main() => runApp(MyWeather());

class MyWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Weather App",
      theme: ThemeData(
        primaryColor: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(child: Home()),
    );
  }
}

