import 'package:flutter/material.dart';
import 'package:remind_app/core/colors.dart';
import 'package:remind_app/core/helper_functions.dart';
import 'package:remind_app/core/mock_data.dart';
import 'package:remind_app/core/sizes.dart';
import 'package:remind_app/features/main_app/presentation/screens/deadline_screen/deadline_screen.dart';

class DeadLineItemWidget extends StatelessWidget {
  final String title;
  final int taskCount;
  const DeadLineItemWidget(
      {super.key, required this.title, required this.taskCount});

  @override
  Widget build(BuildContext context) {
    final randomColor = TMockData.getRandomColor();
    return GestureDetector(
      onTap: () =>
          THelperFunctions.navigateToScreen(context, const DeadLineScreen()),
      child: Container(
        height: TSizes.deadlineContainerHeight,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
            vertical: TSizes.deadlineContainerMarginVertical),
        padding: const EdgeInsets.symmetric(
            horizontal: TSizes.deadlineContainerPaddingHorizontal,
            vertical: TSizes.deadlineContainerPaddingVertical),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(TSizes.smallBorderRadius),
        ),
        child: Row(
          children: [
            Container(
              height: 42,
              width: 42,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: randomColor,
                  borderRadius:
                      BorderRadius.circular(TSizes.smallBorderRadius)),
              child: Text(
                taskCount.toString(),
                style: THelperFunctions.getTextTheme(context).headlineMedium,
              ),
            ),
            THelperFunctions.hbox(TSizes.deadlineContainerTitleSpacing),
            Text(
              title,
              style: THelperFunctions.getTextTheme(context).headlineSmall,
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios_rounded),
            THelperFunctions.hbox(8),
          ],
        ),
      ),
    );
  }
}
