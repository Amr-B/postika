import 'package:flutter/material.dart';
import 'package:poskita/constants/strings/images.dart';
import 'package:poskita/constants/strings/text.dart';
import 'package:poskita/constants/theme/sizes.dart';

import '../../../constants/theme/colors.dart';

class PageViewTwo extends StatelessWidget {
  const PageViewTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
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
                AppTexts.onboardingTitle2,
                style: TextStyle(
                  fontSize: AppSizes.font30,
                  color: AppColors.white,
                ),
              ),
              SizedBox(height: AppSizes.md),
              Image.asset(
                AppImages.onboarding2,
                width: screenWidth * AppSizes.m80,
              ),
              SizedBox(height: AppSizes.md),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
                child: Text(
                  AppTexts.onboarding2SubT,
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
