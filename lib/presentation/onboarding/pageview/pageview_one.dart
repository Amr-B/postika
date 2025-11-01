import 'package:flutter/material.dart';
import 'package:poskita/constants/strings/images.dart';
import 'package:poskita/constants/strings/text.dart';
import 'package:poskita/constants/theme/sizes.dart';

import '../../../constants/theme/colors.dart';

class PageViewOne extends StatelessWidget {
  const PageViewOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSizes.xxxl),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppTexts.appName,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: AppSizes.font24,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: AppSizes.md),
              Text(
                AppTexts.onboardingTitle1,
                style: TextStyle(
                  fontSize: AppSizes.font30,
                  color: AppColors.white,
                ),
              ),
              SizedBox(height: AppSizes.md),
              Image.asset(
                AppImages.onboarding1,
                width: AppSizes.imgXxl,
              ),
              SizedBox(height: AppSizes.md),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
                child: Text(
                  AppTexts.onboarding1SubT,
                  style: TextStyle(
                    fontSize: AppSizes.font16,
                    color: AppColors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
