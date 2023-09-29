import 'dart:async';

import 'login.dart';
import 'main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>{

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()),);
    });
  }

  @override
    Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Notify_logo.png',
                width: 500, height: 500),
            // You can adjust the width and height as needed.
          ],
        ),
      ),
    );
  }
}