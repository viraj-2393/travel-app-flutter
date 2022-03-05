import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './splash_screen.dart';
import './home.dart';
import './tour_details.dart';
import './providers/tour.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (ctx) => Tour()
          ),

        ],
      child: MaterialApp(
        //home: Home(),
        routes: {
      '/':(ctx) => SplashScreen(),
      Home.routeName: (ctx) => Home(),
      TourDetails.routeName: (ctx) => TourDetails()
      },
      ),

    );
  }
}



