
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../AppStyles/appColors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  const CustomTextField({
    super.key, required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 50,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColor().secondaryColor,
          ),
        ),
        style: GoogleFonts.poppins(color: Colors.white),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {

 final VoidCallback onTap;
  const CustomButton({
    super.key, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          color: AppColor().primaryColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Text(
            "Continue",
            style: GoogleFonts.poppins(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

