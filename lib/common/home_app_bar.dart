import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:poskita/utils/constants/strings/images.dart';
import 'package:poskita/utils/constants/theme/colors.dart';
import 'package:poskita/utils/constants/theme/sizes.dart';
import 'package:poskita/utils/constants/strings/text.dart';

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
            surfaceTintColor: AppColors.appBackground,
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
    )
        .animate()
        .fade(duration: 300.ms)
        .slideY(duration: 500.ms, curve: Curves.easeInOut);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
}
