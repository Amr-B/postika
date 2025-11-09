import 'package:flutter/material.dart';
import 'package:poskita/constants/strings/images.dart';
import 'package:poskita/constants/strings/text.dart';
import 'package:poskita/constants/theme/sizes.dart';
import 'package:poskita/presentation/home/widgets/total_sales_card.dart';

class TotalStatus extends StatelessWidget {
  const TotalStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: TotalCard(
            title: AppTexts.totalSales,
            amount: '98,439',
            saleValue: '+ 2.4%',
            image: AppImages.dollar,
          ),
        ),
        SizedBox(width: AppSizes.sm),

        // > total Products
        Expanded(
          child: TotalCard(
            title: AppTexts.totalProductSold,
            amount: '6,264',
            saleValue: '+ 2.4%',
            image: AppImages.box,
          ),
        ),
      ],
    );
  }
}
