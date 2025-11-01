import 'package:get/get.dart';
import 'package:poskita/routes/app_routes.dart';

class AuthController extends GetxController {
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

  void goBack() {
    Get.back();
  }
}
