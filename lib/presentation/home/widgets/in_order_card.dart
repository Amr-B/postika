import 'package:flutter/material.dart';
import 'package:poskita/utils/constants/strings/images.dart';
import 'package:poskita/utils/constants/strings/text.dart';
import 'package:poskita/utils/constants/theme/colors.dart';
import 'package:poskita/utils/constants/theme/sizes.dart';

class InOrderCart extends StatelessWidget {
  const InOrderCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.cont300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius18),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.p18, vertical: AppSizes.p12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // > breakfast menu
                Text(
                  AppTexts.breakFastMenu,
                  style: TextStyle(
                    color: AppColors.DBlue,
                    fontSize: AppSizes.font16,
                  ),
                ),

                // > in kitchen container
                Container(
                  height: AppSizes.cont35,
                  decoration: BoxDecoration(
                    color: AppColors.LYellow,
                    borderRadius: BorderRadius.circular(AppSizes.radius50),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppSizes.p8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // > loading image
                        Image.asset(
                          AppImages.loading,
                          width: AppSizes.icon20,
                        ),
                        SizedBox(width: AppSizes.sm),
                        // > in kitchen
                        Text(
                          AppTexts.inKitchen,
                          style: TextStyle(color: Colors.orange),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: AppSizes.sm),

            // > order number
            Text(
              'Order #8726AB',
              style: TextStyle(
                  fontSize: AppSizes.font18, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: AppSizes.sm),

            // > items and table
            Row(
              children: [
                Text(
                  '4 Items',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: AppSizes.font14,
                  ),
                ),
                SizedBox(width: AppSizes.sm),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(AppSizes.radius50)),
                ),
                SizedBox(width: AppSizes.sm),
                Text(
                  'Table 2',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: AppSizes.font14,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
