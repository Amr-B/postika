import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:poskita/constants/strings/text.dart';
import 'package:poskita/constants/theme/sizes.dart';
import 'package:poskita/presentation/home/widgets/home_icon_button.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: AppSizes.cont50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppSizes.radius50),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
          child: Row(
            children: [
              // search icon
              Icon(Icons.search),
              SizedBox(width: AppSizes.sm),
              // search food
              Text(AppTexts.searchFoods),
              // move filter button to end
              Spacer(),
              HomeIconButton(
                width: AppSizes.cont40,
                height: AppSizes.cont40,
                icon: Icons.tune_outlined,
                onPressed: () {
                  // > opens to filter bottom sheet (backend needed)
                },
              ),
            ],
          ),
        ),
      )
          .animate()
          .fade(duration: 300.ms)
          .slideY(duration: 500.ms, curve: Curves.easeInOut),
    );
  }
}
