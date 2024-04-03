import 'package:flutter/material.dart';

class TAppBarTheme {
  static AppBarTheme lightAppBarTheme = AppBarTheme(
    color: Colors.white,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
  );
  static AppBarTheme darkAppBarTheme = AppBarTheme(
    color: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
  );
}
