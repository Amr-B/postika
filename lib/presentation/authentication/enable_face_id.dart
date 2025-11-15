import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poskita/common/auth_appbar.dart';
import 'package:poskita/common/auth_circular_icon.dart';
import 'package:poskita/utils/constants/strings/images.dart';
import 'package:poskita/utils/constants/strings/text.dart';
import 'package:poskita/utils/constants/theme/colors.dart';
import 'package:poskita/utils/constants/theme/sizes.dart';

import '../../common/elevated_button.dart';
import '../../utils/controllers/routes_controller.dart';

class EnableFaceId extends StatefulWidget {
  const EnableFaceId({super.key});

  @override
  State<EnableFaceId> createState() => _EnableFaceIdState();
}

class _EnableFaceIdState extends State<EnableFaceId> {
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
                      AuthCircularIcon(iconPath: AppImages.authFaceID),
                      SizedBox(height: AppSizes.sm),

                      // > title
                      Text(
                        AppTexts.enableFaceID,
                        style: TextStyle(
                          fontSize: AppSizes.font30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // > subtitle
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizes.p16),
                        child: Text(
                          AppTexts.enableFaceIDSubT,
                          style: TextStyle(
                            fontSize: AppSizes.font12,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: AppSizes.lg),

                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: AppSizes.p24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // > face scan gif
                              Image.asset(
                                AppImages.faceScanGif,
                                height: AppSizes.imgXl,
                              ),

                              Spacer(),

                              // > continue button
                              AppElevatedButton(
                                width: double.infinity,
                                bgColor: AppColors.DBlue,
                                titleColor: Colors.white,
                                onPressed: routesController.goAccessYourAccount,
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
