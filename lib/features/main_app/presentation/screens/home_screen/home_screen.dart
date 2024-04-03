import 'dart:math';

import 'package:flutter/material.dart';
import 'package:remind_app/core/mock_data.dart';
import 'package:remind_app/features/main_app/presentation/widgets/appbar/custom_appbar.dart';
import 'package:remind_app/features/main_app/presentation/widgets/home/deadline_item_widget.dart';
import 'package:remind_app/features/main_app/presentation/widgets/home/mytask_item_widget.dart';

import '../../widgets/home/home_title_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextField(
                  decoration: InputDecoration(
                      hintText: "Search", prefixIcon: Icon(Icons.search)),
                ),
                const TitleWidget(
                  title: "My deadlines",
                ),
                Column(
                  children: List.generate(
                      TMockData.deadlinesTitle.length,
                      (index) => DeadLineItemWidget(
                            title: TMockData.deadlinesTitle[index],
                            taskCount: 3,
                          )),
                ),
                const TitleWidget(
                  title: "My tasks",
                ),
                Column(
                  children: List.generate(
                    TMockData.myTaskTitle.length,
                    (index) => TaskItemWidget(
                      title: TMockData.myTaskTitle[index],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Theme.of(context).colorScheme.primary,
          ),
        ));
  }
}
