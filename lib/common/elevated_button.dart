import 'package:flutter/material.dart';

import 'package:poskita/utils/constants/theme/sizes.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.width,
    required this.bgColor,
    required this.titleColor,
  });

  final Function() onPressed;
  final String title;
  final double? width;
  final Color bgColor;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
            foregroundColor: titleColor,
            elevation: 0,
            padding: EdgeInsets.symmetric(
                horizontal: AppSizes.xxl, vertical: AppSizes.md)),
        onPressed: onPressed,
        child: Text(title),
      ),
    );
  }
}
