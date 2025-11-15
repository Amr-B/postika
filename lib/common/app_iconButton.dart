// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:poskita/utils/constants/theme/sizes.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xFF0C3D91),
        borderRadius: BorderRadius.circular(AppSizes.radius50),
      ),
      child: IconButton(
        icon: const Icon(
          Icons.tune,
          color: Colors.white,
          size: 22,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
