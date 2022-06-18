import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

Color mainColor = "6BCD50".toColor();
Color secondaryColor = "FFE397".toColor();
Color greyColor = "A4A4A4".toColor();
Color greyColor2 = "F1F1F1".toColor();
Color blackColor = "424242".toColor();


Widget loadingIndicator = CircularProgressIndicator(
    color: mainColor
);

TextStyle greyFontStyle = GoogleFonts.poppins().copyWith(color: greyColor);
TextStyle blackFontStyle = GoogleFonts.poppins().copyWith(color: blackColor, fontSize: 12, fontWeight: FontWeight.w400);
TextStyle blackFontStyle2 = GoogleFonts.poppins().copyWith(color: blackColor, fontSize: 14, fontWeight: FontWeight.w500);
TextStyle blackFontStyle3 = GoogleFonts.poppins().copyWith(color: blackColor, fontSize: 18, fontWeight: FontWeight.w600);

TextStyle whiteFontStyle = GoogleFonts.poppins().copyWith( fontSize: 14, fontWeight: FontWeight.w500);

TextStyle yellowFontStyle = GoogleFonts.poppins().copyWith(color: mainColor, fontSize: 12, fontWeight: FontWeight.w400);

const double defaultMargin = 15;

List<BoxShadow> boxShadow = [
  BoxShadow(
    color: Colors.grey.withOpacity(0.2),
    spreadRadius: 0,
    blurRadius: 2,
    offset: Offset(0, 0),
  )
];