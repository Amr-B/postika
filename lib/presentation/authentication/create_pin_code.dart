import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:poskita/common/auth_appbar.dart';
import 'package:poskita/common/auth_circular_icon.dart';
import 'package:poskita/constants/strings/images.dart';
import 'package:poskita/constants/strings/text.dart';
import 'package:poskita/constants/theme/colors.dart';
import 'package:poskita/constants/theme/sizes.dart';
import 'package:poskita/presentation/authentication/widgets/verify_code_widget.dart';

import '../../common/elevated_button.dart';
import '../../controllers/auth_controller.dart';

class CreatePinCode extends StatefulWidget {
  const CreatePinCode({super.key});

  @override
  State<CreatePinCode> createState() => _CreatePinCodeState();
}

class _CreatePinCodeState extends State<CreatePinCode> {
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
                  child: Column(
                    children: [
                      // > circular icon
                      AuthCircularIcon(iconPath: AppImages.authSmPhone),
                      SizedBox(height: AppSizes.sm),

                      // > title
                      Text(
                        AppTexts.createPin,
                        style: TextStyle(
                          fontSize: AppSizes.fontXxxl,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // > subtitle
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizes.p16),
                        child: Text(
                          AppTexts.createPinCodeRules,
                          style: TextStyle(
                            fontSize: AppSizes.fontSm,
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
                                width: AppSizes.contMd,
                                height: AppSizes.contMd,
                              ).animate().fade(duration: 300.ms).slideX(
                                  duration: 500.ms, curve: Curves.easeInOut),
                              SizedBox(height: AppSizes.lg),

                              Spacer(),

                              // > continue button
                              AppElevatedButton(
                                width: double.infinity,
                                bgColor: AppColors.buton1,
                                titleColor: Colors.white,
                                onPressed: () {},
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
