import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/AppStyles/appColors.dart';
import 'package:shop_app/Widgets/custom_widgets,dart.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 123.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Sign In",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 35),
            const CustomTextField(hintText: "Email Address"),
            const SizedBox(height: 10),
            const CustomTextField(hintText: "Password"),
            const SizedBox(height: 20),
            CustomButton(
              onTap: () => Navigator.pushNamed(context, "base_page"),
            ),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Don't have an account? ",
                    style: GoogleFonts.poppins(fontSize: 12, color: Colors.white),
                  ),
                  TextSpan(
                    text: "Create one",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
