import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:poskita/constants/theme/sizes.dart';
import 'package:poskita/presentation/home/widgets/transaction_card.dart';

class TransactionsWidgets extends StatelessWidget {
  const TransactionsWidgets({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: AppSizes.md),
        Text(
          title,
          style: TextStyle(
            fontSize: AppSizes.font18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: AppSizes.md),
        ListView.separated(
          itemCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => TransactionCard(),
          separatorBuilder: (_, __) => SizedBox(height: AppSizes.sm),
        ),
      ],
    )
        .animate()
        .fade(duration: 300.ms)
        .slideY(duration: 500.ms, curve: Curves.easeInOut);
  }
}
