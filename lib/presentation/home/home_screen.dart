import 'package:flutter/material.dart';
import 'package:poskita/common/home_app_bar.dart';
import 'package:poskita/constants/strings/text.dart';
import 'package:poskita/constants/theme/colors.dart';
import 'package:poskita/constants/theme/sizes.dart';
import 'package:poskita/presentation/home/temp/temp_product_containers.dart';
import 'package:poskita/presentation/home/widgets/home_search_bar.dart';
import 'package:poskita/presentation/home/widgets/in_order_list.dart';
import 'package:poskita/presentation/home/widgets/sales_container.dart';
import 'package:poskita/presentation/home/widgets/see_all_products_row.dart';
import 'package:poskita/presentation/home/widgets/total_status.dart';
import 'package:poskita/presentation/home/widgets/transaction_widgets.dart';
import 'temp/products_gridview.dart';

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
              const SizedBox(height: AppSizes.md),
              // > search bar & filter button
              HomeSearchBar(
                onTap: () {
                  // > navigates to search page
                },
              ),

              // > in order List
              const InOrderList(),
              const SizedBox(height: AppSizes.md),

              // Sale Banner
              const SalesContainer(),
              const SizedBox(height: AppSizes.md),

              // > total sales & total product
              const TotalStatus(),

              // > transaction
              const TransactionsWidgets(title: AppTexts.transactions),
              const TransactionsWidgets(title: AppTexts.latestTransactions),
              const SizedBox(height: AppSizes.md),
              Text(
                'Product in Low Stock',
                style: const TextStyle(
                  fontSize: AppSizes.font18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // > products in low stock
              const TempProductContainers(),
              const SizedBox(height: AppSizes.md),

              const SeeAllProductsRow(),

              // > products list
              const ProductsGridView()
            ],
          ),
        ),
      ),
    );
  }
}
