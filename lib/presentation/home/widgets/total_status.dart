import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:poskita/utils/constants/strings/images.dart';
import 'package:poskita/utils/constants/strings/text.dart';
import 'package:poskita/utils/constants/theme/sizes.dart';
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
        )
            .animate()
            .fade(duration: 300.ms)
            .slideX(duration: 500.ms, delay: 100.ms, curve: Curves.easeInOut),
        SizedBox(width: AppSizes.sm),

        // > total Products
        Expanded(
          child: TotalCard(
            title: AppTexts.totalProductSold,
            amount: '6,264',
            saleValue: '+ 2.4%',
            image: AppImages.box,
          ),
        )
            .animate()
            .fade(duration: 300.ms)
            .slideX(duration: 500.ms, delay: 200.ms, curve: Curves.easeInOut),
      ],
    );
  }
}
