import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/Card.dart';
import 'package:myapp/validation.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.brown),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Cards()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        /// set color for screen background
        // color: Colors.red,
        /// set image for screen background
        // decoration: const BoxDecoration(
        //     image: DecorationImage(
        //         fit:BoxFit.cover,
        //         image:AssetImage(
        //             "assets/images/imag.jpg"))),
        /// set gradient for screen background
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topRight,
                colors: [
                  Colors.blueAccent,
                  Colors.cyan,
                  Colors.cyanAccent
                ])
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image(image: AssetImage("assets/icons/tiger.png"))
              Image.asset("assets/icons/cup.png"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Chaya",
                style: TextStyle(fontSize: 40, color: Colors.brown),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
