import 'package:flutter/material.dart';
import 'package:poskita/constants/strings/text.dart';
import 'package:poskita/constants/theme/sizes.dart';
import '../../../constants/strings/images.dart';
import '../widgets/product_card.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 12,
        childAspectRatio: screenWidth < 600
            ? AppSizes.m50 // 0.60 for phones
            : AppSizes.m70, // 0.70 for tablets
      ),
      itemBuilder: (context, index) {
        return const ProductCard(
          title: AppTexts.bananaPancake,
          subTitle: AppTexts.bpSubT,
          image: AppImages.pancake,
          price: '6.00',
        );
      },
    );
  }
}
