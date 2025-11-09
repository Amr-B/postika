import 'package:flutter/material.dart';
import 'package:poskita/constants/theme/sizes.dart';
import 'package:poskita/presentation/home/widgets/in_order_card.dart';

class InOrderList extends StatelessWidget {
  const InOrderList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: AppSizes.lg),
        Text(
          'Order List',
          style: TextStyle(
            fontSize: AppSizes.font18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: AppSizes.sm),

        // > order list
        SizedBox(
          height: AppSizes.cont125,
          child: ListView.separated(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => InOrderCart(),
            separatorBuilder: (_, __) => SizedBox(width: AppSizes.md),
          ),
        ),
      ],
    );
  }
}
