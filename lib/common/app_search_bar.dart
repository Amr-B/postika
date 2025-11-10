import 'package:flutter/material.dart';
import 'package:poskita/constants/strings/text.dart';
import 'package:poskita/constants/theme/sizes.dart';

import 'app_iconButton.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSizes.cont50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius50),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: AppSizes.p16, right: AppSizes.p8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // > search icon
            Icon(Icons.search),

            // > search text
            SizedBox(width: AppSizes.sm),
            Text(
              AppTexts.searchFoods,
              style: TextStyle(
                fontSize: AppSizes.font14,
              ),
            ),

            Spacer(),
            // > filter button
            AppIconButton(
              icon: Icons.tune,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
