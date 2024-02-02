import 'package:flutter/material.dart';

///A class containing all of the colors used in the app
class AppColors {
  ///The main dark color, used in place of black
  static const darkBlue = Color(0xFF0A1128);

  ///The main light color, used in place of white
  static const white = Color(0xFFFFFFFF);

  ///The main grey, used mostly for disabled text
  static const grey = Color(0xFF6C708D);

  ///A darker grey, used for disabled buttons
  static const darkGrey = Color(0xFF555555);

  ///The main highlight color, used for buttons and other interactive elements
  static const orange = Color(0xFFFB8500);

  ///A lighter orage used as the background color for current date on calendar
  static const lightOrange = Color.fromARGB(140, 255, 136, 0);

  ///A lighter grey, used as the background color on certain screens, or the background of elements on other screens
  static const lightGrey = Color(0xFFF3F3F3);

  ///A lighter grey used as the background color for certain search bars
  static const brightGrey = Color(0xFFFAFAFA);

  ///The main red, used for buttons with destructive actions
  static const red = Color(0xFFD80032);

  ///A light grey used to outline certain elements
  static const greyOutline = Color(0xFFD1D1D1);

  ///A blue used on the user page for the Logout button
  static const skyblue = Color(0xFF2082DC);

  ///A light translucent grey used for some shadows
  static const lightShadow = Color(0x18595959);

  ///A dark translucent grey used for some shadows
  static const heavyShadow = Color(0x18000000);
}
