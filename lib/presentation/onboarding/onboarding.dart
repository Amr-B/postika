import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poskita/utils/constants/theme/colors.dart';
import 'package:poskita/presentation/onboarding/pageview/pageview_one.dart';
import 'package:poskita/presentation/onboarding/pageview/pageview_two.dart';
import 'package:poskita/presentation/onboarding/widgets/actions_row.dart';

import '../../utils/controllers/onboarding_controller.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  // > call getX
  final controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.onBoardingGradient1,
            AppColors.onBoardingGradient2
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: controller.pageController,
                  onPageChanged: controller.onPageChanged,
                  children: [
                    PageViewOne(),
                    PageViewTwo(),
                  ],
                ),
              ),
              ActionsRow()
            ],
          )),
    );
  }
}
