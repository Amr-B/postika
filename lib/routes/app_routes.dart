import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:poskita/constants/animations/page_anims.dart';
import 'package:poskita/presentation/authentication/create_password.dart';
import 'package:poskita/presentation/authentication/create_pin_code.dart';
import 'package:poskita/presentation/authentication/enable_face_id.dart';
import 'package:poskita/presentation/authentication/key_reasons.dart';
import 'package:poskita/presentation/authentication/setup_profile.dart';
import 'package:poskita/presentation/authentication/verify_code.dart';
import 'package:poskita/presentation/authentication/verify_email.dart';
import 'package:poskita/presentation/onboarding/onboarding.dart';

class AppRoutes {
  static const onboarding = '/onboarding';
  static const setupProfile = '/setupProfile';
  static const createPw = '/createPw';
  static const verifyEmail = '/verifyEmail';
  static const verifyCode = '/verifyCode';
  static const keyReasons = '/keyReasons';
  static const createPinCode = '/createPinCode';
  static const enableFaceId = '/enableFaceId';

  static final routes = [
    GetPage(
      name: onboarding,
      page: () => const Onboarding(),
    ),
    GetPage(
      name: setupProfile,
      page: () => const SetupProfilePage(),
      customTransition: SlideFadeTransition(),
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: createPw,
      page: () => const CreatePasswordPage(),
      customTransition: SlideFadeTransition(),
    ),
    GetPage(
      name: verifyEmail,
      page: () => const VerifyEmail(),
      customTransition: SlideFadeTransition(),
    ),
    GetPage(
      name: verifyCode,
      page: () => const VerifyCodePage(),
      customTransition: SlideFadeTransition(),
    ),
    GetPage(
      name: keyReasons,
      page: () => const KeyReasonsPage(),
      customTransition: SlideFadeTransition(),
    ),
    GetPage(
      name: createPinCode,
      page: () => const CreatePinCode(),
      customTransition: SlideFadeTransition(),
    ),
    GetPage(
      name: enableFaceId,
      page: () => const EnableFaceId(),
      customTransition: SlideFadeTransition(),
    ),
  ];
}
