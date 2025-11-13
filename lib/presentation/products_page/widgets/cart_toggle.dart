import 'package:flutter/material.dart';
import 'package:poskita/constants/theme/sizes.dart';
import 'package:poskita/presentation/products_page/widgets/qnt_widget.dart';

class CartToggleButton extends StatefulWidget {
  const CartToggleButton({super.key});

  @override
  State<CartToggleButton> createState() => _CartToggleButtonState();
}

class _CartToggleButtonState extends State<CartToggleButton> {
  bool showQnt = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (child, animation) => ScaleTransition(
        scale: animation,
        child: child,
      ),
      child: showQnt
          ? QntWidget(key: const ValueKey('qnt'))
          : Container(
              width: AppSizes.cont40,
              height: AppSizes.cont40,
              decoration: BoxDecoration(
                color: Color(0xFF0C3D91),
                borderRadius: BorderRadius.circular(AppSizes.radius16),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                  size: AppSizes.icon22,
                ),
                onPressed: () => setState(() => showQnt = true),
              ),
            ),
    );
  }
}
