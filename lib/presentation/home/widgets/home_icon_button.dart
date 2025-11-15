import 'package:flutter/material.dart';
import 'package:poskita/utils/constants/theme/colors.dart';
import 'package:poskita/utils/constants/theme/sizes.dart';

class HomeIconButton extends StatelessWidget {
  const HomeIconButton({
    super.key,
    required this.width,
    required this.height,
    required this.icon,
    this.iconColor,
    this.iconBgColor,
    required this.onPressed,
  });

  final double width;
  final double height;
  final IconData icon;
  final Color? iconColor;
  final Color? iconBgColor;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: iconBgColor ?? AppColors.DBlue,
        borderRadius: BorderRadius.circular(AppSizes.radius50),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: iconColor ?? Colors.white,
          size: AppSizes.icon20,
        ),
      ),
    );
  }
}
