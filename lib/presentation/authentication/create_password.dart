import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:poskita/common/auth_appbar.dart';
import 'package:poskita/common/auth_circular_icon.dart';
import 'package:poskita/common/field_info.dart';
import 'package:poskita/constants/strings/images.dart';
import 'package:poskita/constants/strings/text.dart';
import 'package:poskita/constants/theme/colors.dart';
import 'package:poskita/constants/theme/sizes.dart';
import 'package:poskita/controllers/auth_controller.dart';
import 'package:poskita/presentation/authentication/widgets/app_field.dart';

import '../../common/elevated_button.dart';

class CreatePasswordPage extends StatefulWidget {
  const CreatePasswordPage({super.key});

  @override
  State<CreatePasswordPage> createState() => _CreatePasswordPageState();
}

class _CreatePasswordPageState extends State<CreatePasswordPage> {
  //  call controller
  final routesController = Get.put(RoutesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.authBg,
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
                      AuthCircularIcon(iconPath: AppImages.authLock),
                      SizedBox(height: AppSizes.sm),

                      // > title
                      Text(
                        AppTexts.createYourPw,
                        style: TextStyle(
                          fontSize: AppSizes.fontXxxl,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // > subtitle
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizes.p16),
                        child: Text(
                          AppTexts.loginRegSubT,
                          style: TextStyle(
                            fontSize: AppSizes.fontSm,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: AppSizes.lg),

                      // > fields
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: AppSizes.p24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // > password
                              AppTextField(
                                      hint: "Password",
                                      icon: Icons.person_outline)
                                  .animate()
                                  .fade(duration: 300.ms)
                                  .slideX(
                                      duration: 500.ms,
                                      curve: Curves.easeInOut),
                              SizedBox(height: AppSizes.lg),

                              // > confirm password
                              AppTextField(
                                      hint: "Confirm Password",
                                      icon: Icons.person_outline)
                                  .animate(delay: 100.ms)
                                  .fade(duration: 300.ms)
                                  .slideX(
                                      duration: 500.ms,
                                      curve: Curves.easeInOut),
                              SizedBox(height: AppSizes.md),

                              // > password rules
                              FieldInfo(
                                info: AppTexts.pwRules,
                                fontSize: AppSizes.fontMd,
                              ),
                              Spacer(),

                              // > continue button
                              AppElevatedButton(
                                width: double.infinity,
                                bgColor: AppColors.buton1,
                                titleColor: Colors.white,
                                onPressed: routesController.goVerifyEmail,
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
