import 'package:flutter/material.dart';
import 'package:remind_app/core/theme/theme.dart';
import 'package:remind_app/features/main_app/presentation/screens/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const SafeArea(child: HomeScreen()),
    );
  }
}
