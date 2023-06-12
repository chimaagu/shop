import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/Screens/Authentication/sign_in_page.dart';
import 'package:shop_app/Screens/Authentication/sign_in_password.dart';
import 'package:shop_app/Screens/Base/base_page.dart';
import 'package:shop_app/Screens/OnboardingScreens/onBoarding1.dart';
import 'package:shop_app/Screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'shop app',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().toString(),
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const SplashScreen(),
        "onboarding1": (context) => const OnboardingOne(),
        "sign_in": (context) => const SignInPage(),
        "sign_in_password": (context) => const SignInPassword(),
        "base_page": (context) => const BasePage(),
      },
    );
  }
}
