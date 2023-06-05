import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/Widgets/custom_widgets,dart.dart';

class SignInPassword extends StatefulWidget {
  const SignInPassword({Key? key}) : super(key: key);

  @override
  State<SignInPassword> createState() => _SignInPasswordState();
}

class _SignInPasswordState extends State<SignInPassword> {
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
            const CustomTextField(
              hintText: "Password",
            ),
            const SizedBox(height: 20),
            CustomButton(
              onTap: () {},
            ),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Forgot Password? ",
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                  TextSpan(
                    text: "Reset",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
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
