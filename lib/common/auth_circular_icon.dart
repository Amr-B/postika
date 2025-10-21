import 'package:flutter/material.dart';
import 'package:poskita/constants/theme/sizes.dart';

class AuthCircularIcon extends StatelessWidget {
  const AuthCircularIcon({
    super.key,
    required this.iconPath,
  });

  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: AppSizes.radius50,
      backgroundColor: Colors.white,
      child: Image.asset(
        iconPath,
        width: AppSizes.imgSm,
      ),
    );
  }
}
