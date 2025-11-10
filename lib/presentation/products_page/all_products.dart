import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:poskita/common/app_search_bar.dart';
import 'package:poskita/constants/theme/colors.dart';
import 'package:poskita/constants/theme/sizes.dart';
import 'package:poskita/presentation/home/temp/products_gridview.dart';
import 'package:poskita/presentation/products_page/widgets/products_page_appbar.dart';

class AllProductsPage extends StatelessWidget {
  const AllProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: ProductsPageAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
          child: Column(
            children: [
              SizedBox(height: AppSizes.xl),
              // > search bar & filter button
              AppSearchBar(),
              SizedBox(height: AppSizes.md),

              // > products
              ProductsGridView()
                  .animate()
                  .fade(duration: 300.ms)
                  .slideX(duration: 500.ms, curve: Curves.easeInOut)
            ],
          ),
        ),
      ),
    );
  }
}
