import 'package:flutter/material.dart';
import 'package:poskita/utils/constants/theme/colors.dart';
import 'package:poskita/utils/constants/theme/sizes.dart';

class KeyReasonCard extends StatelessWidget {
  const KeyReasonCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.iconPath,
  });

  final String title;
  final String subTitle;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius24),
      ),
      child: Padding(
        padding: EdgeInsets.all(AppSizes.p16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: AppSizes.cont35,
                  height: AppSizes.cont35,
                  decoration: BoxDecoration(
                    color: AppColors.lighIconBlue,
                    borderRadius: BorderRadius.circular(AppSizes.radius50),
                  ),
                  child: Center(
                    child: Image.asset(
                      iconPath,
                      height: AppSizes.xl,
                    ),
                  ),
                ),
                SizedBox(width: AppSizes.sm),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppSizes.font16,
                  ),
                ),
              ],
            ),
            SizedBox(height: AppSizes.xs),
            Text(
              subTitle,
              style: TextStyle(
                fontSize: AppSizes.font12,
                color: Colors.grey,
              ),
              textAlign: TextAlign.start,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
