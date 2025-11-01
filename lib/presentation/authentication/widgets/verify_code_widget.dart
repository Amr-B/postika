import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpInput extends StatelessWidget {
  final Function(String)? onCompleted;
  final double radius;
  final double width;
  final double height;

  const OtpInput(
      {super.key,
      this.onCompleted,
      required this.radius,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: width,
      height: height,
      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
      ),
    );

    return SizedBox(
      width: double.infinity,
      child: Pinput(
        length: 4,
        defaultPinTheme: defaultPinTheme,
        focusedPinTheme: defaultPinTheme.copyWith(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(color: Colors.blue, width: 2),
          ),
        ),
        submittedPinTheme: defaultPinTheme.copyWith(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
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
