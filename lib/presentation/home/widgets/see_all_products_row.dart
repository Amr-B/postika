import 'package:flutter/material.dart';
import 'package:poskita/utils/constants/strings/text.dart';
import 'package:poskita/utils/constants/theme/sizes.dart';

import 'package:get/get.dart';
import 'package:poskita/utils/controllers/routes_controller.dart';

class SeeAllProductsRow extends StatelessWidget {
  const SeeAllProductsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final routesController = Get.put(RoutesController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppTexts.allProducts,
          style: TextStyle(
            fontSize: AppSizes.font18,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: routesController.goAllProductsPage,
          child: Text(
            AppTexts.seeAll,
            style: TextStyle(
              fontSize: AppSizes.font16,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
