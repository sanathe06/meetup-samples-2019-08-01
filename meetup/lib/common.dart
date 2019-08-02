import 'package:flutter/material.dart';

class Constant {
  static const green = Color(0xFF005C3C);
  static const greenTight = Color(0xFF003a26);
  static const blue = Color(0xFF084D86);
  static const red = Color(0xFFFA5040);
  static const orange = Color(0xFFFAA00A);

  static const textStyle1 = const TextStyle(
      color: green,
      fontWeight: FontWeight.w900,
      fontFamily: "NunitoSans",
      fontStyle: FontStyle.normal,
      fontSize: 32.0);

  static const textStyle2 = const TextStyle(
      color: blue,
      fontWeight: FontWeight.w600,
      fontFamily: "NunitoSans-SemiBold",
      fontStyle: FontStyle.normal,
      fontSize: 30.0);

  static const textStyle3 = const TextStyle(
      color: orange,
      fontWeight: FontWeight.w800,
      fontFamily: "NunitoSans-ExtraBold",
      fontStyle: FontStyle.normal,
      fontSize: 30.0);

  final icon = Image.asset("assets/images/ic_check_large.png");
  
}