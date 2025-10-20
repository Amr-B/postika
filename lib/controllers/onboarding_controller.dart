import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poskita/routes/app_routes.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  var currentPage = 0.obs;

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  void nextPage() {
    print('Next pressed | Current page: ${currentPage.value}');
    if (currentPage.value < 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      print('Navigating to login page...');
      Get.offAllNamed(AppRoutes.login);
    }
  }

  void skip() {
    print('Skipped onboarding');
    Get.offAllNamed(AppRoutes.login);
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
