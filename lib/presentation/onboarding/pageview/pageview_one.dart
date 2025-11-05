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
    final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSizes.xxxl),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // > app title
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

              // > slogan
              Text(
                AppTexts.onboardingTitle1,
                style: TextStyle(
                  fontSize: AppSizes.font30,
                  color: AppColors.white,
                ),
              ),
              SizedBox(height: AppSizes.md),

              // > image
              Image.asset(
                AppImages.onboarding1,
                width: screenWidth * AppSizes.m80,
                // width: AppSizes.imgXxl,
              ),
              SizedBox(height: AppSizes.md),

              // > subtitle
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
