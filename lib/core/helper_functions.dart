import 'package:flutter/material.dart';
import 'package:remind_app/core/sizes.dart';

class THelperFunctions {
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => screen,
    ));
  }

  static Widget vbox([double height = TSizes.vbox]) {
    return SizedBox(height: height);
  }

  static Widget hbox([double width = TSizes.hbox]) {
    return SizedBox(width: width);
  }

  static TextTheme getTextTheme(BuildContext context) {
    return Theme.of(context).textTheme;
  }
}
