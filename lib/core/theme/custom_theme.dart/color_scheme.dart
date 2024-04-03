import 'package:flutter/material.dart';
import 'package:remind_app/core/colors.dart';

class TColorScheme {
  static ColorScheme lightColorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: TColors.whiteColor,
      onPrimary: TColors.purpleColor.withOpacity(.5),
      secondary: TColors.blueColor,
      onSecondary: TColors.blueColor,
      error: TColors.redColor,
      onError: TColors.redColor,
      background: TColors.whiteColor,
      onBackground: TColors.whiteColor,
      surface: TColors.blueColor,
      onSurface: TColors.blueColor);
  static ColorScheme darkColorScheme = ColorScheme(
      brightness: Brightness.dark,
      primary: Colors.black,
      onPrimary: TColors.purpleColor.withOpacity(.5),
      secondary: TColors.whiteColor,
      onSecondary: TColors.blueColor,
      error: TColors.redColor,
      onError: TColors.redColor,
      background: TColors.greyDarkColor,
      onBackground: TColors.greyLightColor,
      surface: TColors.blueColor,
      onSurface: TColors.blueColor);
}
