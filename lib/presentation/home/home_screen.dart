import 'package:flutter/material.dart';
import 'package:poskita/common/home_app_bar.dart';
import 'package:poskita/constants/strings/images.dart';
import 'package:poskita/constants/strings/text.dart';
import 'package:poskita/constants/theme/colors.dart';
import 'package:poskita/constants/theme/sizes.dart';
import 'package:poskita/presentation/home/temp/temp_product_containers.dart';
import 'package:poskita/presentation/home/widgets/home_search_bar.dart';
import 'package:poskita/presentation/home/widgets/in_order_list.dart';
import 'package:poskita/presentation/home/widgets/product_card.dart';
import 'package:poskita/presentation/home/widgets/sales_container.dart';
import 'package:poskita/presentation/home/widgets/total_status.dart';
import 'package:poskita/presentation/home/widgets/transaction_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

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

              // > in order List
              InOrderList(),
              SizedBox(height: AppSizes.md),

              // Sale Banner
              SalesContainer(),
              SizedBox(height: AppSizes.md),

              // > total sales & total product
              TotalStatus(),

              // > transaction
              TransactionsWidgets(title: AppTexts.transactions),
              TransactionsWidgets(title: AppTexts.latestTransactions),
              SizedBox(height: AppSizes.md),
              Text(
                'Product in Low Stock',
                style: TextStyle(
                  fontSize: AppSizes.font18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // > products in low stock
              TempProductContainers(),
              SizedBox(height: AppSizes.md),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All Products',
                    style: TextStyle(
                      fontSize: AppSizes.font18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        fontSize: AppSizes.font16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              GridView.builder(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
