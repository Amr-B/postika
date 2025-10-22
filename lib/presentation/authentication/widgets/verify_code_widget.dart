import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:poskita/constants/theme/sizes.dart';

class OtpInput extends StatelessWidget {
  final Function(String)? onCompleted;

  const OtpInput({super.key, this.onCompleted});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: AppSizes.contXl,
      height: AppSizes.contSm,
      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius50),
      ),
    );

    return SizedBox(
      width: double.infinity,
      child: Pinput(
        length: 4,
        defaultPinTheme: defaultPinTheme,
        focusedPinTheme: defaultPinTheme.copyWith(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.radius50),
            border: Border.all(color: Colors.blue, width: 2),
          ),
        ),
        submittedPinTheme: defaultPinTheme.copyWith(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.radius50),
            color: Colors.blue.shade50,
            border: Border.all(color: Colors.blue, width: 1.5),
          ),
        ),
        onCompleted: onCompleted,
        showCursor: true,
      ),
    );
  }
}
