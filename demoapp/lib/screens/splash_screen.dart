import 'dart:async';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyHomePage())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(232, 240, 255, 1),
        ),
        child: Container(
          height: double.infinity,
          padding: EdgeInsets.all(25),
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 50,
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset('assets/images/flo.png')),
              Container(
                padding: EdgeInsets.only(right: 11),
                alignment: Alignment.topRight,
                child: Text(
                  'Powered by Team Alchemists',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Container(height: 5,),
              Container(
                child: Image.asset('assets/images/bookflo.png'),
                padding: EdgeInsets.all(10),
              ),
              Container(
                height: 42,
              ),
              CircularProgressIndicator(
                backgroundColor: Colors.transparent,
                valueColor:
                    new AlwaysStoppedAnimation<Color>(Colors.blueAccent),
              ),
              Container(
                height: 15,
              ),
              Container(
                child: Text(
                  'Loading System',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Container(
                height: 50,
              ),
              // Container(
              //     alignment: Alignment.bottomCenter,
              //     child: Image.asset('assets/images/sltc.png')),
            ],
          ),
        ),
      ),
    );
  }
}
