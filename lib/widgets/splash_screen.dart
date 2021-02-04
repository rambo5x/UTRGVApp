import 'package:flutter/material.dart';
import 'dart:async';
import 'package:UTRGV_App/widgets/home_page.dart';
import 'package:lottie/lottie.dart';

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
    var duration = new Duration(seconds: 7);
    return new Timer(duration, navigateToDeviceScreen);
  }

  navigateToDeviceScreen() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => MyHomePage(title: appTitle)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFFFFFFFF),
      //backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              /* Image.asset(
                'assets/images/ieee1.png',
                alignment: Alignment.center,
                height: 200,
                width: 300,
                fit: BoxFit.fitWidth,
              ),*/
              Lottie.asset('assets/images/testSplashScreen.json',
                  // fit: BoxFit.cover,
                  height: 500,
                  width: 500),
              //  alignment: Alignment.centerLeft),
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
                "Welcome!",
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
