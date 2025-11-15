import 'package:flutter/material.dart';
import 'package:poskita/utils/constants/theme/sizes.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: AppSizes.cont65,
        height: AppSizes.cont65,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
