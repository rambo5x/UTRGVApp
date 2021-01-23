import 'package:flutter/material.dart';
import 'package:UTRGV_App/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Redirect first to the Splash Screen
      home: SplashScreen(),
    );
  }
}
