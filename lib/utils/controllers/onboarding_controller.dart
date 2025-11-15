import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poskita/utils/routes/app_routes.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  var currentPage = 0.obs;

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  void nextPage() {
    if (currentPage.value < 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      Get.offAllNamed(AppRoutes.setupProfile);
    }
  }

  void skip() {
    Get.offAllNamed(AppRoutes.homeScreen);
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
