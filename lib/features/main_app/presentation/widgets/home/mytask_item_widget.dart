import 'package:flutter/material.dart';

import 'package:remind_app/core/colors.dart';
import 'package:remind_app/core/helper_functions.dart';
import 'package:remind_app/core/mock_data.dart';
import 'package:remind_app/core/sizes.dart';

class TaskItemWidget extends StatelessWidget {
  final String title;
  final bool isColor;
  const TaskItemWidget({super.key, required this.title, this.isColor = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: TSizes.myTaskContainerHeight,
            width: TSizes.myTaskContainerWidth,
            margin: const EdgeInsets.symmetric(
                vertical: TSizes.myTaskContainerMarginVertical),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: isColor ? Colors.red : TColors.greyDarkColor,
                borderRadius: BorderRadius.circular(TSizes.smallBorderRadius)),
            child: const Icon(Icons.keyboard_arrow_down_rounded)),
        THelperFunctions.hbox(6),
        Expanded(
          child: Container(
            height: TSizes.myTaskContainerHeight,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(
                horizontal: TSizes.myTaskContainerPaddingHorizontal),
            decoration: BoxDecoration(
                color: isColor ? Colors.red : TColors.greyLightColor,
                borderRadius: BorderRadius.circular(TSizes.smallBorderRadius)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: THelperFunctions.getTextTheme(context).headlineSmall,
                ),
                Container(
                  height: 42,
                  width: 42,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: TColors.whiteColor,
                      borderRadius:
                          BorderRadius.circular(TSizes.smallBorderRadius)),
                  child: Text(
                    "4",
                    style: THelperFunctions.getTextTheme(context)
                        .headlineMedium!
                        .copyWith(color: Colors.black87),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
