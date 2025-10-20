import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:poskita/presentation/authentication/login.dart';
import 'package:poskita/presentation/onboarding/onboarding.dart';

class AppRoutes {
  static const onboarding = '/onboarding';
  static const login = '/login';

  static final routes = [
    GetPage(
      name: onboarding,
      page: () => const Onboarding(),
    ),
    GetPage(
      name: login,
      page: () => const LoginPage(),
    ),
  ];
}
