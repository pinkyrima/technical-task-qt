import 'package:flutter/material.dart';
import 'package:qtechtask/src/style/k_color.dart';

class KTextStyle {
  static TextStyle headline1 = const TextStyle(
    color: KColor.primary,
    fontSize: 40,
    fontWeight: FontWeight.bold,
    fontFamily: 'Mulish',
  );
  static TextStyle headline2 = const TextStyle(
    // color: KColor.secondary,
    fontSize: 36,
    fontWeight: FontWeight.bold,
    fontFamily: 'Mulish',
  );
  static TextStyle headline3 = const TextStyle(
    // color: KColor.secondary,
    fontSize: 30,
    fontWeight: FontWeight.bold,
    fontFamily: 'Mulish',
  );

  static TextStyle headline4 = const TextStyle(
    color: KColor.primary,
    fontSize: 26,
    fontWeight: FontWeight.bold,
    fontFamily: 'Mulish',
  );
  static TextStyle headline5 = const TextStyle(
    color: KColor.neutralBlack,
    fontSize: 24,
    fontWeight: FontWeight.w500,
    fontFamily: 'Mulish',
  );
  static TextStyle headline6 = const TextStyle(
    // color: KColor.secondary,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    fontFamily: 'Mulish', //light
  );
  static TextStyle headline7 = const TextStyle(
    color: KColor.pink,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: 'Mulish',
    letterSpacing: 0.15,
  );
  static TextStyle subTitle1 = const TextStyle(
    color: KColor.darkGray,
    fontSize: 16,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.15,
  );
  static TextStyle bodyText = const TextStyle(
    color: KColor.neutralBlack,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.15,
  );
  static TextStyle bodyText2 = const TextStyle(
    color: KColor.pink,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.15,
  );
  static TextStyle button = const TextStyle(
    color: KColor.neutralBlack,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
  );
  static TextStyle caption = const TextStyle(
    color: KColor.primary,
    fontSize: 12,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.4,
  );
  static TextStyle caption1 = const TextStyle(
    color: KColor.darkGray,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.4,
  );
  static TextStyle overLine = const TextStyle(
    //color: KColor.secondary,
    fontSize: 10,
    fontWeight: FontWeight.normal,
    letterSpacing: 1.5,
  );
}
