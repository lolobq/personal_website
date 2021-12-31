import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/constants/fonts.dart';

class TextStyles {
  TextStyles._();

  static TextStyle get homeName => const TextStyle(
        color: Color.fromARGB(255, 2, 41, 71),
        fontSize: 80.0, //30.0
        fontWeight: FontWeight.bold,
        letterSpacing: 1.0,
      );

  static TextStyle get homeIntro => const TextStyle(
        fontFamily: Fonts.product,
        color: Colors.black,
        fontSize: 30.0, //30.0
        letterSpacing: 1.0,
      );

  static TextStyle get footer => const TextStyle(
        fontFamily: Fonts.product,
        color: Colors.black87,
        fontSize: 12.0, //10,.0
        letterSpacing: 1.0,
      );

  static TextStyle get appbaritem => const TextStyle(
        fontFamily: Fonts.product,
        color: Colors.white70,
        fontSize: 16.0, //12.0
        fontWeight: FontWeight.bold,
        letterSpacing: 1.0,
      );

  static TextStyle get title => const TextStyle(
        color: Colors.white,
        fontFamily: Fonts.product,
        fontSize: 24.0, //16.0
        letterSpacing: 1.2,
      );

  static TextStyle get company => TextStyle(
        fontFamily: Fonts.product,
        color: Color(0xFF45405B),
        height: 1.5,
        fontSize: 15.0, //15.0
        letterSpacing: 1.0,
      );

  static TextStyle get body => TextStyle(
        fontFamily: Fonts.product,
        color: Color(0xFF85819C),
        height: 1.5,
        fontSize: 12.0, //12.0
        letterSpacing: 1.0,
      );

  static TextStyle get body1 => TextStyle(
        fontFamily: Fonts.product,
        color: Color(0xFF85819C),
        height: 1.5,
        fontSize: 10.0, //10.0
        letterSpacing: 1.0,
      );

  static TextStyle get chip => TextStyle(
        fontFamily: Fonts.product,
        color: Color(0xFF85819C),
        height: 1.5,
        fontSize: 12.0, //12.0
        letterSpacing: 1.0,
      );
}
