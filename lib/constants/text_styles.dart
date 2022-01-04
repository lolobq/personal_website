////////////////////////////////////////////////////////////////////////////////////
//Text Styles File:
//
//Contains TextStyles class -> one location for all text styles used on the web pages
////////////////////////////////////////////////////////////////////////////////////

import 'package:flutter/material.dart';

class TextStyles {
  TextStyles._();

  static TextStyle get homeName => const TextStyle(
        color: Color.fromARGB(255, 2, 41, 71),
        fontSize: 100.0,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.0,
      );

  static TextStyle get homeIntro => const TextStyle(
        color: Colors.black,
        fontSize: 30.0,
        letterSpacing: 1.0,
      );

  static TextStyle get footer => const TextStyle(
        color: Colors.black87,
        fontSize: 14.0,
        letterSpacing: 1.0,
      );

  static TextStyle get appbaritem => const TextStyle(
        color: Colors.white70,
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.0,
      );

  static TextStyle get title => const TextStyle(
        color: Colors.white,
        fontSize: 24.0,
        letterSpacing: 1.2,
      );
}
