import 'package:flutter/material.dart';
import 'package:appointment/helpers/colors.dart';

const double _defaultCharSpacing = 0.3;

///A class containing all of the text styles used in the app
class TextStyles {
  ///A shorthand for text weight regular
  static TextStyle regular({
    double fontSize = 14,
    Color color = AppColors.darkBlue,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontFamily: 'Inter',
      fontStyle: FontStyle.normal,
      color: color,
      fontWeight: FontWeight.w400,
      letterSpacing: _defaultCharSpacing,
      decoration: TextDecoration.none,
    );
  }

  ///A shorthand for text weight bold
  static TextStyle bold({
    double fontSize = 14,
    Color color = AppColors.darkBlue,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontFamily: 'Inter',
      fontStyle: FontStyle.normal,
      color: color,
      fontWeight: FontWeight.w700,
      letterSpacing: _defaultCharSpacing,
      decoration: TextDecoration.none,
    );
  }

  ///A shorthand for text weight semi-bold
  static TextStyle semibold({
    double fontSize = 28,
    Color color = AppColors.darkBlue,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontFamily: 'Inter',
      fontStyle: FontStyle.normal,
      color: color,
      fontWeight: FontWeight.w600,
      letterSpacing: _defaultCharSpacing,
      decoration: TextDecoration.none,
    );
  }

  ///A shorthand for text weight medium
  static TextStyle medium({
    double fontSize = 20,
    Color color = AppColors.darkBlue,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontFamily: 'Inter',
      fontStyle: FontStyle.normal,
      color: color,
      fontWeight: FontWeight.w500,
      letterSpacing: _defaultCharSpacing,
      decoration: TextDecoration.none,
    );
  }
}
