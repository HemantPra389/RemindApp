import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:remind_app/core/colors.dart';
import 'package:remind_app/core/helper_functions.dart';
import 'package:remind_app/core/sizes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: TSizes.appbarPaddingHorizontal,
          vertical: TSizes.appbarPaddingVertical),
      child: AppBar(
        primary: false,
        leading: CircleAvatar(
          radius: TSizes.circularAvatarRadius,
          backgroundColor: Theme.of(context).colorScheme.secondary,
          child: IconTheme(
              data: Theme.of(context).iconTheme,
              child: const Icon(
                Icons.settings,
                color: Colors.black,
              )),
        ),
        leadingWidth: 48,
        title: Text(
          "Home",
          style: THelperFunctions.getTextTheme(context).headlineSmall,
        ),
        actions: const [
          CircleAvatar(
            radius: TSizes.circularAvatarRadius,
            backgroundImage: CachedNetworkImageProvider(
                'https://www.catholicsingles.com/wp-content/uploads/2020/06/blog-header-3.png'),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
