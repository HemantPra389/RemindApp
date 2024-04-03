import 'dart:math';

import 'package:flutter/material.dart';
import 'package:remind_app/core/colors.dart';

class TMockData {
  static final List<String> deadlinesTitle = [
    "Today",
    "Scheduled",
    "Done",
    "All remainders"
  ];
  static final List<String> myTaskTitle = [
    "School",
    "Health",
    "Family",
    "Science",
    "Algebra",
    "Geometry",
    "English"
  ];
  static final List<Color> colors = [
    TColors.redColor,
    TColors.greenColor,
    TColors.blueColor,
    TColors.yellowColor,
    TColors.purpleColor,
    TColors.pinkColor,
    TColors.orangeColor,
  ];
  static Color getRandomColor() {
    final List<Color> colors = [
      TColors.redColor,
      TColors.greenColor,
      TColors.blueColor,
      TColors.yellowColor,
      TColors.purpleColor,
      TColors.pinkColor,
      TColors.orangeColor,
    ];

    final random = Random();
    return colors[random.nextInt(colors.length)];
  }
}
