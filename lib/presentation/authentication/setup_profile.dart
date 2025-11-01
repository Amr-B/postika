import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:poskita/common/auth_circular_icon.dart';
import 'package:poskita/common/circular_checkbox.dart';
import 'package:poskita/constants/strings/images.dart';
import 'package:poskita/constants/strings/text.dart';
import 'package:poskita/constants/theme/colors.dart';
import 'package:poskita/constants/theme/sizes.dart';
import 'package:poskita/presentation/authentication/widgets/app_field.dart';

import '../../common/elevated_button.dart';
import '../../controllers/routes_controller.dart';

class SetupProfilePage extends StatefulWidget {
  const SetupProfilePage({super.key});

  @override
  State<SetupProfilePage> createState() => _SetupProfilePageState();
}

class _SetupProfilePageState extends State<SetupProfilePage> {
  final routesController = Get.put(RoutesController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.appBackground,
      appBar: AppBar(
        backgroundColor: AppColors.appBackground,
        toolbarHeight: 100,
      ),
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
                      AuthCircularIcon(iconPath: AppImages.authUser),
                      SizedBox(height: AppSizes.sm),

                      // > title
                      Text(
                        AppTexts.setYourProfile,
                        style: TextStyle(
                          fontSize: AppSizes.font30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // > subtitle
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizes.p16),
                        child: Text(
                          AppTexts.loginRegSubT,
                          style: TextStyle(
                            fontSize: AppSizes.font12,
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
                              // > first name
                              AppTextField(
                                      hint: "First Name",
                                      icon: Icons.person_outline)
                                  .animate()
                                  .fade(duration: 300.ms)
                                  .slideX(
                                      duration: 500.ms,
                                      curve: Curves.easeInOut),
                              SizedBox(height: AppSizes.lg),

                              // > confirm password
                              AppTextField(
                                      hint: "Last Name",
                                      icon: Icons.person_outline)
                                  .animate(delay: 100.ms)
                                  .fade(duration: 300.ms)
                                  .slideX(
                                      duration: 500.ms,
                                      curve: Curves.easeInOut),
                              SizedBox(height: AppSizes.md),

                              // > continue check
                              CircularCheckbox(label: AppTexts.loginCheck),
                              Spacer(),

                              // > continue button
                              AppElevatedButton(
                                width: double.infinity,
                                bgColor: AppColors.buton1,
                                titleColor: Colors.white,
                                onPressed: routesController.goCreatePw,
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
