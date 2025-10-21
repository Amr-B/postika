import 'package:flutter/material.dart';
import 'package:poskita/common/back_button.dart';
import 'package:poskita/constants/theme/sizes.dart';

class AuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onTap;

  const AuthAppBar({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SizedBox(
        height: kToolbarHeight + 40, // taller area
        child: Align(
          alignment: Alignment.bottomLeft, // push content down
          child: Padding(
            padding:
                const EdgeInsets.only(left: AppSizes.p16, bottom: AppSizes.p8),
            child: AppBackButton(onTap: onTap),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 40);
}
