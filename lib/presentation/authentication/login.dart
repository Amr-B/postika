import 'package:flutter/material.dart';
import 'package:poskita/common/auth_appbar.dart';
import 'package:poskita/common/auth_circular_icon.dart';
import 'package:poskita/common/circular_checkbox.dart';
import 'package:poskita/constants/strings/images.dart';
import 'package:poskita/constants/strings/text.dart';
import 'package:poskita/constants/theme/colors.dart';
import 'package:poskita/constants/theme/sizes.dart';
import 'package:poskita/presentation/authentication/widgets/app_field.dart';

import '../../common/elevated_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.authBg,
      appBar: AuthAppBar(onTap: () {}),
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
                              // > first name
                              AppTextField(
                                  hint: "Name", icon: Icons.person_outline),
                              SizedBox(height: AppSizes.lg),

                              // > last name
                              AppTextField(
                                  hint: "Last Name",
                                  icon: Icons.person_outline),
                              SizedBox(height: AppSizes.md),

                              // > continue check
                              CircularCheckbox(label: AppTexts.loginCheck),
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
