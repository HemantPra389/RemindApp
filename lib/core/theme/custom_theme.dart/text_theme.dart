import 'package:flutter/material.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
    bodySmall: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black),
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
    bodySmall: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white),
  );
}
