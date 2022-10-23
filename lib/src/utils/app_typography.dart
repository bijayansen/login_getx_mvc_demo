import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

// Custom [Typographies] To Maintain Consistency Of Text Styles & Font Properties.
class AppTypography {
  TextStyle getTs10(Color textColor,
          [FontWeight fontWeight = FontWeight.w400]) =>
      GoogleFonts.roboto(
          color: textColor, fontSize: 10, fontWeight: fontWeight);

  TextStyle getTs12(Color textColor,
          [FontWeight fontWeight = FontWeight.w400]) =>
      GoogleFonts.roboto(
          color: textColor, fontSize: 12, fontWeight: fontWeight);

  TextStyle getTs14(Color textColor,
          [FontWeight fontWeight = FontWeight.w400]) =>
      GoogleFonts.roboto(
          color: textColor, fontSize: 14, fontWeight: fontWeight);

  TextStyle getTs16(Color textColor,
          [FontWeight fontWeight = FontWeight.w400]) =>
      GoogleFonts.roboto(
          color: textColor, fontSize: 16, fontWeight: fontWeight);

  TextStyle getTs18(Color textColor,
          [FontWeight fontWeight = FontWeight.w400]) =>
      GoogleFonts.roboto(
          color: textColor, fontSize: 18, fontWeight: fontWeight);

  TextStyle getTs20(Color textColor,
          [FontWeight fontWeight = FontWeight.w400]) =>
      GoogleFonts.roboto(
          color: textColor, fontSize: 20, fontWeight: fontWeight);

  TextStyle getTs24(Color textColor,
          [FontWeight fontWeight = FontWeight.w400]) =>
      GoogleFonts.roboto(
          color: textColor, fontSize: 24, fontWeight: fontWeight);

  TextStyle getTs32(Color textColor,
          [FontWeight fontWeight = FontWeight.w400]) =>
      GoogleFonts.roboto(
          color: textColor, fontSize: 32, fontWeight: fontWeight);
}
