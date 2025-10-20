import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poskita/common/elevated_button.dart';
import 'package:poskita/constants/strings/text.dart';
import 'package:poskita/constants/theme/colors.dart';
import 'package:poskita/constants/theme/sizes.dart';
import 'package:poskita/controllers/onboarding_controller.dart';

class ActionsRow extends StatelessWidget {
  const ActionsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OnboardingController>();

    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.xl, vertical: AppSizes.xxl),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              AppTexts.skip,
              style: TextStyle(
                fontSize: AppSizes.fontMd,
                color: AppColors.white,
              ),
            ),
          ),
          AppElevatedButton(
            onPressed: controller.nextPage,
            title: AppTexts.next,
          )
        ],
      ),
    );
  }
}
