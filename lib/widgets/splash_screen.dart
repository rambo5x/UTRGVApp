import 'package:flutter/material.dart';
import 'dart:async';
import 'package:UTRGV_App/widgets/home_page.dart';

final appTitle = 'Drawer Demo';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, navigateToDeviceScreen);
  }

  navigateToDeviceScreen() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => MyHomePage(title: appTitle)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFF05023), Colors.blueAccent[700]])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Image.asset(
                'assets/images/ieee1.png',
                alignment: Alignment.topCenter,
                height: 200,
                width: 300,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 12,
              ),
              Center(
                child: Text(
                  "Advancing Technology for Humanity",
                  style: TextStyle(
                      color: Color(0xFF00629B),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
