import 'package:flutter/material.dart';
import './splash_screen.dart';
import './home.dart';
void main() {
  runApp(MaterialApp(
    //home: Home(),
    routes: {
      '/':(ctx) => SplashScreen(),
      Home.routeName: (ctx) => Home(),
    },
  ));
}



