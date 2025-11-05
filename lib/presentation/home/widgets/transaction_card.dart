import 'package:flutter/material.dart';
import 'package:poskita/constants/strings/images.dart';
import 'package:poskita/constants/theme/colors.dart';
import 'package:poskita/constants/theme/sizes.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius24),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.p16, vertical: AppSizes.p12),
        child: Row(
          children: [
            // > icon
            Container(
              width: AppSizes.cont50,
              height: AppSizes.cont50,
              decoration: BoxDecoration(
                color: AppColors.lightBlue,
                borderRadius: BorderRadius.circular(AppSizes.radius50),
              ),
              // > icon asset image
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.p10),
                child: Image.asset(AppImages.dollar),
              ),
            ),
            SizedBox(width: AppSizes.sm),
            // > order number & items, table number and price
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // > order number
                Text(
                  'Order #42234AB',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppSizes.font18,
                  ),
                ),

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
                          borderRadius:
                              BorderRadius.circular(AppSizes.radius50)),
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
                ),
              ],
            ),
            Spacer(),
            // > price
            Text(
              '\$59,00',
              style: TextStyle(
                color: AppColors.DBlue,
                fontSize: AppSizes.font22,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
