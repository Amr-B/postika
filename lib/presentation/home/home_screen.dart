import 'package:flutter/material.dart';
import 'package:poskita/common/home_app_bar.dart';
import 'package:poskita/constants/theme/colors.dart';
import 'package:poskita/constants/theme/sizes.dart';
import 'package:poskita/presentation/home/widgets/home_search_bar.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.p24),
        child: Column(
          children: [
            // > space between appbar and home widgets
            SizedBox(height: AppSizes.md),
            // > search bar & filter button
            HomeSearchBar(
              onTap: () {
                // > navigates to search page
              },
            )
          ],
        ),
      ),
    );
  }
}
