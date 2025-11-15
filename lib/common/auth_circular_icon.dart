import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:poskita/utils/constants/theme/sizes.dart';

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
      )
          .animate()
          .fade(delay: 50.ms)
          .slideY(duration: 300.ms)
          .shake(delay: 800.ms),
    );
  }
}
