import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:poskita/common/home_app_bar.dart';
import 'package:poskita/constants/strings/images.dart';
import 'package:poskita/constants/strings/text.dart';
import 'package:poskita/constants/theme/colors.dart';
import 'package:poskita/constants/theme/sizes.dart';
import 'package:poskita/presentation/home/widgets/home_search_bar.dart';
import 'package:poskita/presentation/home/widgets/in_order_card.dart';
import 'package:poskita/presentation/home/widgets/sales_container.dart';
import 'package:poskita/presentation/home/widgets/total_sales_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: HomeAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.p24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // > space between appbar and home widgets
              SizedBox(height: AppSizes.md),
              // > search bar & filter button
              HomeSearchBar(
                onTap: () {
                  // > navigates to search page
                },
              ),
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
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => InOrderCart(),
                  separatorBuilder: (_, __) => SizedBox(
                    width: AppSizes.md,
                  ),
                ),
              ),
              SizedBox(height: AppSizes.md),

              // Sale Banner
              SalesContainer(),
              SizedBox(height: AppSizes.md),

              // > total sales & total product
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TotalCard(
                    title: AppTexts.totalSales,
                    amount: '98,439',
                    saleValue: '+ 2.4%',
                    image: AppImages.dollar,
                  ),
                  TotalCard(
                    title: AppTexts.totalProductSold,
                    amount: '6,264',
                    saleValue: '+ 2.4%',
                    image: AppImages.box,
                  ),
                ],
              ),
              SizedBox(height: AppSizes.md),
            ],
          ),
        ),
      ),
    );
  }
}
