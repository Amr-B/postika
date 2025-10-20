import 'package:flutter/material.dart';

import 'package:poskita/constants/theme/colors.dart';
import 'package:poskita/constants/theme/sizes.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          padding: EdgeInsets.symmetric(
              horizontal: AppSizes.xxl, vertical: AppSizes.md)),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
