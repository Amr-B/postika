import 'package:flutter/material.dart';
import 'package:poskita/common/app_search_bar.dart';
import 'package:poskita/common/back_button.dart';
import 'package:poskita/constants/strings/text.dart';
import 'package:poskita/constants/theme/colors.dart';
import 'package:poskita/constants/theme/sizes.dart';

class AllProductsPage extends StatelessWidget {
  const AllProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: AppBar(
        backgroundColor: AppColors.appBackground,
        centerTitle: true,
        leading: AppBackButton(onTap: () {}),
        title: Text(
          AppTexts.allProducts,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.p20),
          child: Column(
            children: [
              SizedBox(height: AppSizes.xl),
              // > search bar & filter button
              AppSearchBar(),

              // > products
            ],
          ),
        ),
      ),
    );
  }
}
