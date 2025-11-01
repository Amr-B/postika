import 'package:get/get.dart';
import 'package:poskita/routes/app_routes.dart';

class RoutesController extends GetxController {
  void goCreatePw() {
    Get.toNamed(AppRoutes.createPw);
  }

  void goVerifyEmail() {
    Get.toNamed(AppRoutes.verifyEmail);
  }

  void goVerifyCode() {
    Get.toNamed(AppRoutes.verifyCode);
  }

  void goKeyReasons() {
    Get.toNamed(AppRoutes.keyReasons);
  }

  void goCreatePinCode() {
    Get.toNamed(AppRoutes.createPinCode);
  }

  void goEnableFaceID() {
    Get.toNamed(AppRoutes.enableFaceId);
  }

  void goAccessYourAccount() {
    Get.toNamed(AppRoutes.accessYourAccount);
  }

  // > home routing
  void goHomeScreen() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  void goBack() {
    Get.back();
  }
}
