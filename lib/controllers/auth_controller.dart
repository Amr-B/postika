import 'package:get/get.dart';
import 'package:poskita/routes/app_routes.dart';

class AuthController extends GetxController {
  void goCreatePw() {
    Get.toNamed(AppRoutes.createPw);
  }
}
