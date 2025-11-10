import 'package:flutter/material.dart';
import 'package:poskita/constants/strings/text.dart';
import 'package:poskita/constants/theme/colors.dart';
import 'package:poskita/constants/theme/sizes.dart';

class ProductsPageAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ProductsPageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
      child: AppBar(
        backgroundColor: AppColors.appBackground,
        centerTitle: true,
        leading: Container(
          width: AppSizes.cont50,
          height: AppSizes.cont25,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
        ),
        title: Text(
          AppTexts.allProducts,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(AppSizes.p4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppSizes.radius50),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
              splashColor: Colors.grey.shade100,
              splashRadius: 24,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 0);
}
