import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:poskita/utils/constants/strings/images.dart';
import 'package:poskita/utils/constants/strings/text.dart';
import 'package:poskita/utils/constants/theme/sizes.dart';
import 'package:poskita/presentation/home/widgets/product_container.dart';

class TempProductContainers extends StatelessWidget {
  const TempProductContainers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) => SizedBox(height: AppSizes.sm),
      itemBuilder: (context, index) {
        final products = [
          {
            'title': AppTexts.wholeWheatLoaf,
            'subTitle': AppTexts.wwlSubT,
            'image': AppImages.wheatLoaf,
            'inStock': '10',
            'price': '4.80',
          },
          {
            'title': 'Frosted Bliss Donut',
            'subTitle': 'Soft blue donut with vibrant pink sprinkles delight.',
            'image': AppImages.donut,
            'inStock': '8',
            'price': '5.00',
          },
          {
            'title': 'Chocolate Muffin',
            'subTitle': 'Rich, moist chocolate muffin with cocoa goodness.',
            'image': AppImages.muffin,
            'inStock': '15',
            'price': '3.50',
          },
        ];

        final item = products[index];
        return ProductContainer(
          title: item['title']!,
          subTitle: item['subTitle']!,
          image: item['image']!,
          inStock: item['inStock']!,
          price: item['price']!,
        );
      },
    )
        .animate()
        .fade(duration: 300.ms)
        .slideY(duration: 500.ms, delay: 300.ms, curve: Curves.easeInOut);
  }
}
