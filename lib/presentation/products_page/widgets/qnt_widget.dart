import 'package:flutter/material.dart';
import 'package:poskita/constants/theme/sizes.dart';

class QntWidget extends StatelessWidget {
  const QntWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.p4),
      width: AppSizes.cont75,
      height: AppSizes.cont30,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(AppSizes.radius50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // > Increament
          Material(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(AppSizes.radius16),
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                // > Increament method
              },
              child: SizedBox(
                width: AppSizes.cont20,
                height: AppSizes.cont20,
                child:
                    Icon(Icons.add, color: Colors.white, size: AppSizes.icon20),
              ),
            ),
          ),

          Text(
            '1',
            style: TextStyle(
              fontSize: AppSizes.font18,
            ),
          ),

          // > Decreament
          Material(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(AppSizes.radius16),
            child: InkWell(
              borderRadius: BorderRadius.circular(AppSizes.radius16),
              onTap: () {
                // > Decreament method
              },
              child: SizedBox(
                width: AppSizes.cont20,
                height: AppSizes.cont20,
                child: Icon(Icons.remove,
                    color: Colors.white, size: AppSizes.icon20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
