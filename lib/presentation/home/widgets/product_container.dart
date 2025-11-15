import 'package:flutter/material.dart';
import 'package:poskita/utils/constants/theme/colors.dart';
import 'package:poskita/utils/constants/theme/sizes.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.inStock,
    required this.price,
  });

  final String title;
  final String subTitle;
  final String image;
  final String inStock;
  final String price;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.p10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // > image
            ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.radius20),
              child: SizedBox(
                width: screenWidth * AppSizes.m20,
                height: screenWidth * AppSizes.m30,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: AppSizes.sm),

            // > right section (text + button)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // > title + stock
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: TextStyle(
                            fontSize: AppSizes.font16,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                      // > in stock container
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppSizes.p10, vertical: AppSizes.p4),
                        decoration: BoxDecoration(
                          color: AppColors.lightRed,
                          borderRadius:
                              BorderRadius.circular(AppSizes.radius50),
                        ),
                        child: Text(
                          'inStock: $inStock',
                          style: TextStyle(
                            fontSize: screenWidth * AppSizes.m03,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // > subtitle
                  SizedBox(height: 4),
                  Text(
                    subTitle,
                    style: TextStyle(
                      fontSize: AppSizes.font14,
                      color: Colors.grey,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: AppSizes.md),
                  // > price + cart icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$ $price',
                        style: TextStyle(
                          fontSize: AppSizes.font18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.DBlue,
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.DBlue,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.shopping_cart_outlined,
                              color: Colors.white, size: 22),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
