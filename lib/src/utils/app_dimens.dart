import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';

// Global [Dimensional Properties] Of The Application.
class AppDimens {
  //Integer
  static const int otpFieldSize = 6;
  static const int phoneNumberLimit = 10;

  //Integer, LOGICAL
  static const secToMilliConstant = 1000;

  //Double
  static const double appBarElevation = 0;
  static const double appLoaderSize = 40;

  //Double,Spacing
  static const double defaultPagePadding = 20;
  static const double primaryAppSpace = 32;
  static const double secondaryAppSpace = 16;
  static const double tertiaryAppSpace = 8;
  static const double quaternaryAppSpace = 4;
  static const double zeroPadding = 0;
  static const double buttonVerticalPadding = 12;

  //Double,Radius Curve
  static const double primaryAppCurve = 16;
  static const double secondaryAppCurve = 8;
  static const double tertiaryAppCurve = 4;
  static const double buttonRadius = 100;
  static const double textFieldRadius = 4;
  static const double curvedDecorationRadius = 4;

  //Double, Border Width
  static const double defaultBorderWidth = 0.2;
  static const double primaryBorderWidth = 2;
  static const double primaryDividerWidth = 0.5;
  static const double textFieldBorderWidth = 1;
  static const double snackBarBorderWidth = 0.5;

  //Double, Scaffold Opacity
  static const double uniqueScaffoldOpacity = 0.2;

  //Color
  static const Color scaffoldColor = AppColors.cBackgroundColor;
  static const Color appLoaderColor = AppColors.cPrimaryColor;
  static const Color curvedDecorationColor = AppColors.cPrimaryColor;

  //String
  static const String blankString = '';

  //Durations
  static const Duration pageTransitionDuration = Duration(milliseconds: 400);

  //Durations, Splash Animations
  static const splashAnimationDuration = Duration(milliseconds: 2000);
}
