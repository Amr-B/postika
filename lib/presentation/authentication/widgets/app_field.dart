import 'package:flutter/material.dart';
import 'package:poskita/utils/constants/theme/sizes.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final TextEditingController? controller;

  const AppTextField({
    super.key,
    required this.hint,
    required this.icon,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon, color: Colors.grey),
        filled: true,
        fillColor: const Color(0xFFF4F7FC), // light bluish background
        contentPadding: const EdgeInsets.symmetric(
            vertical: AppSizes.p16, horizontal: AppSizes.p16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radius30),
          borderSide: BorderSide.none,
        ),
        hintStyle: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
