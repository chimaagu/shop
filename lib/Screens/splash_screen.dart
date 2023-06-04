import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  clearSplash() async{
    Timer(const Duration(seconds: 2), () {
Navigator.pushNamedAndRemoveUntil(context, "onboarding1", (route) => false);
    });
  }

  @override
  void initState() {
  clearSplash();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "sHoP",
          style: TextStyle(
            color: Colors.yellow,
            fontWeight: FontWeight.w900,
            fontSize: 70,
          ),
        ),
      ),
    );
  }
}
