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

  void goBack() {
    Get.back();
  }
}
