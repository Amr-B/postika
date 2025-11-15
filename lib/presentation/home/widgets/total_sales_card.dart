// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:poskita/utils/constants/strings/text.dart';
import 'package:poskita/utils/constants/theme/colors.dart';
import 'package:poskita/utils/constants/theme/sizes.dart';

class TotalCard extends StatelessWidget {
  const TotalCard({
    super.key,
    required this.image,
    this.icon,
    required this.title,
    required this.amount,
    required this.saleValue,
  });

  final String image;
  final IconData? icon;
  final String title;
  final String amount;
  final String saleValue;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.42,
      // width: AppSizes.cont175,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.p8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // > icon & title
            Row(
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
                      child: image != null ? Image.asset(image) : Icon(icon)),
                ),
                SizedBox(width: AppSizes.sm),
                // > title
                Text(
                  AppTexts.totalSales,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: AppSizes.font14,
                  ),
                  maxLines: 2,
                )
              ],
            ),
            SizedBox(
              height: AppSizes.sm,
            ),
            // > Amount
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.p10),
              child: Text(
                amount,
                style: TextStyle(
                  fontSize: AppSizes.font30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // > green sale
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSizes.p10),
                  child: Container(
                    width: AppSizes.cont50,
                    height: AppSizes.cont25,
                    decoration: BoxDecoration(
                      color: Colors.green.shade300,
                      borderRadius: BorderRadius.circular(AppSizes.radius50),
                    ),
                    child: Center(
                      child: Text(
                        saleValue,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: AppSizes.font12,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  AppTexts.vsLastMonth,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: AppSizes.font12,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
