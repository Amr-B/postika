import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:poskita/common/auth_appbar.dart';
import 'package:poskita/common/auth_circular_icon.dart';
import 'package:poskita/common/field_info.dart';
import 'package:poskita/utils/constants/strings/images.dart';
import 'package:poskita/utils/constants/strings/text.dart';
import 'package:poskita/utils/constants/theme/colors.dart';
import 'package:poskita/utils/constants/theme/sizes.dart';
import 'package:poskita/presentation/authentication/widgets/verify_code_widget.dart';

import '../../common/elevated_button.dart';
import '../../utils/controllers/routes_controller.dart';

class VerifyCodePage extends StatefulWidget {
  const VerifyCodePage({super.key});

  @override
  State<VerifyCodePage> createState() => _VerifyCodePageState();
}

class _VerifyCodePageState extends State<VerifyCodePage> {
  final routesController = Get.put(RoutesController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.appBackground,
      appBar: AuthAppBar(onTap: routesController.goBack),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: SizedBox(
                  child: Column(
                    children: [
                      // > circular icon
                      AuthCircularIcon(iconPath: AppImages.authSmPhone),
                      SizedBox(height: AppSizes.sm),

                      // > title
                      Text(
                        AppTexts.enterVerificationCode,
                        style: TextStyle(
                          fontSize: AppSizes.font30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // > subtitle
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizes.p16),
                        child: Text(
                          AppTexts.enterCodeSubT,
                          style: TextStyle(
                            fontSize: AppSizes.font12,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: AppSizes.lg),

                      // > OTP field
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: AppSizes.p24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // > first name
                              OtpInput(
                                radius: AppSizes.radius50,
                                width: AppSizes.cont100,
                                height: AppSizes.cont50,
                              ).animate().fade(duration: 300.ms).slideX(
                                  duration: 500.ms, curve: Curves.easeInOut),
                              SizedBox(height: AppSizes.lg),

                              FieldInfo(
                                info: AppTexts.verifyCodeRules,
                                fontSize: AppSizes.font16,
                                textAlign: TextAlign.center,
                              ),
                              Spacer(),

                              // > continue button
                              AppElevatedButton(
                                width: double.infinity,
                                bgColor: AppColors.DBlue,
                                titleColor: Colors.white,
                                onPressed: routesController.goKeyReasons,
                                title: AppTexts.continu,
                              ),
                              SizedBox(height: AppSizes.xl),
                            ],
                          ),
                        ),
                      ),
                    ],
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
