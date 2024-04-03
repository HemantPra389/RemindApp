import 'package:flutter/material.dart';
import 'package:remind_app/core/colors.dart';

class TTextFieldTheme {
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    isDense: false,
    filled: true,
    fillColor: TColors.whiteColor,
    contentPadding: const EdgeInsets.all(12),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide:
            BorderSide(color: TColors.greyDarkColor.withOpacity(.5), width: 1)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide:
            BorderSide(width: 2, color: TColors.greyDarkColor.withOpacity(.5))),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide:
            BorderSide(width: 2, color: TColors.redColor.withOpacity(.5))),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    isDense: false,
    filled: true,
    fillColor: TColors.greyDarkColor,
    contentPadding: const EdgeInsets.all(12),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide:
            BorderSide(width: 2, color: TColors.whiteColor.withOpacity(.5))),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide:
            BorderSide(width: 2, color: TColors.redColor.withOpacity(.5))),
  );
}
