import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/AppStyles/appColors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  clearSplash() async{
    Timer(const Duration(seconds: 2), () {
Navigator.pushNamedAndRemoveUntil(context, "sign_in", (route) => false);
    });
  }

  @override
  void initState() {
  clearSplash();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor().primaryColor,
      body: Center(
        child: Text(
          "sHoP",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 70,
          ),
        ),
      ),
    );
  }
}
