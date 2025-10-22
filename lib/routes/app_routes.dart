import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:poskita/presentation/authentication/create_password.dart';
import 'package:poskita/presentation/authentication/setup_profile.dart';
import 'package:poskita/presentation/onboarding/onboarding.dart';

class AppRoutes {
  static const onboarding = '/onboarding';
  static const setupProfile = '/setupProfile';
  static const createPw = '/createPw';

  static final routes = [
    GetPage(name: onboarding, page: () => const Onboarding()),
    GetPage(name: setupProfile, page: () => const SetupProfilePage()),
    GetPage(name: createPw, page: () => const CreatePasswordPage()),
  ];
}
