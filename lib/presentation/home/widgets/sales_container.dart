import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:poskita/constants/theme/colors.dart';
import 'package:poskita/constants/theme/sizes.dart';

class SalesContainer extends StatelessWidget {
  const SalesContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(AppSizes.radius30)),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.gradientDeepBlue,
            AppColors.gradientMidBlue,
            AppColors.gradientTeal,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.p18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // > date & calendar icon
            Row(
              children: [
                Icon(
                  Icons.calendar_month,
                  color: Colors.grey.shade400,
                ),
                SizedBox(width: AppSizes.sm),
                Text(
                  '4 Dec 2025',
                  style: TextStyle(color: Colors.grey.shade400),
                )
              ],
            ),
            SizedBox(height: AppSizes.md),
            // > sale title
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: AppSizes.font24,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
                children: const [
                  TextSpan(text: 'Sales Revenue Grows by '),
                  TextSpan(
                    text: '5.9%',
                    style: TextStyle(color: Colors.green),
                  ),
                  TextSpan(text: ' in One Week.'),
                ],
              ),
            ),
            SizedBox(height: AppSizes.md),
            // > button

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.white.withAlpha(50),
                foregroundColor: Colors.white,
                side: const BorderSide(color: Colors.white, width: 0.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizes.radius30),
                ),
              ),
              child: Text('See Statics'),
            )
          ],
        ),
      ),
    )
        .animate()
        .fade(duration: 300.ms)
        .slideX(duration: 500.ms, curve: Curves.easeInOut);
  }
}
