import 'package:flutter/material.dart';
import 'package:remind_app/core/helper_functions.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        THelperFunctions.vbox(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: THelperFunctions.getTextTheme(context).headlineMedium,
            ),
            IconTheme(
                data: Theme.of(context).iconTheme.copyWith(color: Colors.white),
                child: Icon(Icons.more_horiz))
          ],
        ),
        THelperFunctions.vbox(12),
      ],
    );
  }
}
