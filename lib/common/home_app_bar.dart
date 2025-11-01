import 'package:flutter/material.dart';
import 'package:poskita/constants/strings/images.dart';
import 'package:poskita/constants/theme/colors.dart';
import 'package:poskita/constants/theme/sizes.dart';
import 'package:poskita/constants/strings/text.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight + 20),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              top: AppSizes.p20, left: AppSizes.p16, right: AppSizes.p16),
          child: AppBar(
            elevation: 0,
            backgroundColor: AppColors.appBackground,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // > user name & title
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppTexts.hello,
                      style: TextStyle(fontSize: AppSizes.font20),
                    ),
                    Text(
                      AppTexts.dummyName,
                      style: TextStyle(
                          fontSize: AppSizes.font24,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                CircleAvatar(
                  radius: AppSizes.radius30,
                  backgroundColor: Colors.grey.shade300,
                  backgroundImage: AssetImage(AppImages.authUser),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
}
