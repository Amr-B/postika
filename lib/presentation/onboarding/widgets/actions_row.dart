import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poskita/common/elevated_button.dart';
import 'package:poskita/utils/constants/strings/text.dart';
import 'package:poskita/utils/constants/theme/colors.dart';
import 'package:poskita/utils/constants/theme/sizes.dart';
import 'package:poskita/utils/controllers/onboarding_controller.dart';

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
            onPressed: controller.skip,
            child: Text(
              AppTexts.skip,
              style: TextStyle(
                fontSize: AppSizes.font16,
                color: AppColors.white,
              ),
            ),
          ),
          AppElevatedButton(
            bgColor: Colors.white,
            titleColor: Colors.black,
            onPressed: controller.nextPage,
            title: AppTexts.next,
          )
        ],
      ),
    );
  }
}
