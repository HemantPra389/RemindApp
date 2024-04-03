import 'package:flutter/material.dart';
import 'package:remind_app/core/theme/custom_theme.dart/appbar_theme.dart';
import 'package:remind_app/core/theme/custom_theme.dart/color_scheme.dart';
import 'package:remind_app/core/theme/custom_theme.dart/floating_action_button_theme.dart';
import 'package:remind_app/core/theme/custom_theme.dart/icon_theme.dart';
import 'package:remind_app/core/theme/custom_theme.dart/text_theme.dart';
import 'package:remind_app/core/theme/custom_theme.dart/textfield_theme.dart';

class TAppTheme {
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Inter',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: TColorScheme.lightColorScheme,
      inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
      floatingActionButtonTheme:
          TFloatingActionButtonTheme.lightFloatingActionButtonTheme,
      iconTheme: TIconTheme.lightIconTheme,
      primaryIconTheme: TIconTheme.lightIconTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      textTheme: TTextTheme.lightTextTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Inter',
      colorScheme: TColorScheme.darkColorScheme,
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      iconTheme: TIconTheme.darkIconTheme,
      primaryIconTheme: TIconTheme.darkIconTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      scaffoldBackgroundColor: Colors.grey.shade900,
      inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
      floatingActionButtonTheme:
          TFloatingActionButtonTheme.darkFloatingActionButtonTheme,
      textTheme: TTextTheme.darkTextTheme);
}
