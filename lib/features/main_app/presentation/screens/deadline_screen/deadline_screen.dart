import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:remind_app/core/colors.dart';
import 'package:remind_app/core/helper_functions.dart';
import 'package:remind_app/core/sizes.dart';
import 'package:remind_app/features/main_app/presentation/widgets/home/deadline_item_widget.dart';
import 'package:remind_app/features/main_app/presentation/widgets/home/home_title_widget.dart';
import 'package:remind_app/features/main_app/presentation/widgets/home/mytask_item_widget.dart';

class DeadLineScreen extends StatelessWidget {
  const DeadLineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: TColors.redColor,
          leading: IconTheme(
              data: Theme.of(context).iconTheme,
              child: const Icon(Icons.arrow_back_ios_new_rounded)),
          title: Text(
            "Personal",
            style: THelperFunctions.getTextTheme(context).headlineSmall,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 18),
              child: IconTheme(
                  data: Theme.of(context).iconTheme,
                  child: Icon(Icons.more_horiz_rounded)),
            )
          ],
          centerTitle: false),
      body: Column(
        children: [
          Container(
            height: TSizes.xxxl,
            width: double.infinity,
            padding: EdgeInsets.symmetric(
                horizontal: TSizes.deadlineScreenPaddingHorizontal,
                vertical: TSizes.deadlineScreenPaddingVertical),
            decoration: const BoxDecoration(
                color: TColors.redColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(TSizes.mediumBorderRadius),
                    bottomRight: Radius.circular(TSizes.mediumBorderRadius))),
            child: Row(
              children: [
                Container(
                  height: 42,
                  width: 42,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: TColors.greyDarkColor,
                      borderRadius:
                          BorderRadius.circular(TSizes.smallBorderRadius)),
                  child: Text(
                    "4",
                    style:
                        THelperFunctions.getTextTheme(context).headlineMedium,
                  ),
                ),
                THelperFunctions.hbox(TSizes.deadlineContainerTitleSpacing),
                Text(
                  "Today",
                  style: THelperFunctions.getTextTheme(context).headlineSmall,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: TitleWidget(title: "My Tasks"),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: List.generate(
                      14,
                      (index) => const TaskItemWidget(
                            title: "Morning",
                            isColor: false,
                          )),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
