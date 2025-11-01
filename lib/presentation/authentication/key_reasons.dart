import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:poskita/common/auth_appbar.dart';
import 'package:poskita/common/auth_circular_icon.dart';
import 'package:poskita/common/elevated_button.dart';
import 'package:poskita/constants/strings/images.dart';
import 'package:poskita/constants/strings/text.dart';
import 'package:poskita/constants/theme/colors.dart';
import 'package:poskita/constants/theme/sizes.dart';
import 'package:poskita/presentation/authentication/widgets/key_reason_card.dart';
import '../../controllers/auth_controller.dart';

class KeyReasonsPage extends StatefulWidget {
  const KeyReasonsPage({super.key});

  @override
  State<KeyReasonsPage> createState() => _KeyReasonsPageState();
}

class _KeyReasonsPageState extends State<KeyReasonsPage> {
  final authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.authBg,
      appBar: AuthAppBar(onTap: authController.goBack),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: SizedBox(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppSizes.p24),
                    child: Column(
                      children: [
                        // > circular icon
                        AuthCircularIcon(iconPath: AppImages.authWidget),
                        SizedBox(height: AppSizes.sm),

                        // > title
                        Text(
                          AppTexts.keyReasons,
                          style: TextStyle(
                            fontSize: AppSizes.fontXxxl,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),

                        // > subtitle
                        Text(
                          AppTexts.keyReasonsSubT,
                          style: TextStyle(
                            fontSize: AppSizes.fontSm,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: AppSizes.md),

                        KeyReasonCard(
                          title: AppTexts.seamlessTransactios,
                          subTitle: AppTexts.seamlessTransSubT,
                          iconPath: AppImages.authUser,
                        )
                            .animate(delay: 100.ms)
                            .fade(duration: 300.ms)
                            .slideX(duration: 500.ms, curve: Curves.easeInOut),
                        SizedBox(height: AppSizes.md),

                        KeyReasonCard(
                          title: AppTexts.seamlessTransactios,
                          subTitle: AppTexts.seamlessTransSubT,
                          iconPath: AppImages.authUser,
                        )
                            .animate(delay: 150.ms)
                            .fade(duration: 300.ms)
                            .slideX(duration: 500.ms, curve: Curves.easeInOut),
                        SizedBox(height: AppSizes.md),
                        KeyReasonCard(
                          title: AppTexts.seamlessTransactios,
                          subTitle: AppTexts.seamlessTransSubT,
                          iconPath: AppImages.authUser,
                        )
                            .animate(delay: 200.ms)
                            .fade(duration: 300.ms)
                            .slideX(duration: 500.ms, curve: Curves.easeInOut),

                        Spacer(),

                        AppElevatedButton(
                          width: double.infinity,
                          bgColor: AppColors.buton1,
                          titleColor: Colors.white,
                          onPressed: authController.goCreatePinCode,
                          title: AppTexts.continu,
                        ),

                        SizedBox(height: AppSizes.md),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
