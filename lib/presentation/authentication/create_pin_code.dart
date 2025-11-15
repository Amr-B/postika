import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:poskita/common/auth_appbar.dart';
import 'package:poskita/common/auth_circular_icon.dart';
import 'package:poskita/utils/constants/strings/images.dart';
import 'package:poskita/utils/constants/strings/text.dart';
import 'package:poskita/utils/constants/theme/colors.dart';
import 'package:poskita/utils/constants/theme/sizes.dart';
import 'package:poskita/presentation/authentication/widgets/verify_code_widget.dart';

import '../../common/elevated_button.dart';
import '../../utils/controllers/routes_controller.dart';

class CreatePinCode extends StatefulWidget {
  const CreatePinCode({super.key});

  @override
  State<CreatePinCode> createState() => _CreatePinCodeState();
}

class _CreatePinCodeState extends State<CreatePinCode> {
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
                        AppTexts.createPin,
                        style: TextStyle(
                          fontSize: AppSizes.font30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // > subtitle
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizes.p16),
                        child: Text(
                          AppTexts.createPinCodeRules,
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
                                width: AppSizes.cont65,
                                height: AppSizes.cont65,
                              ).animate().fade(duration: 300.ms).slideX(
                                  duration: 500.ms, curve: Curves.easeInOut),
                              SizedBox(height: AppSizes.lg),

                              Spacer(),

                              // > continue button
                              AppElevatedButton(
                                width: double.infinity,
                                bgColor: AppColors.DBlue,
                                titleColor: Colors.white,
                                onPressed: routesController.goEnableFaceID,
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
