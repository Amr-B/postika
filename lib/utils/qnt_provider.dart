// ignore_for_file: prefer_conditional_assignment, unused_local_variable

import 'package:flutter/material.dart';
import 'package:poskita/constants/theme/colors.dart';
import 'package:poskita/constants/theme/sizes.dart';

class QntProvider with ChangeNotifier {
  int _quantity = 1;
  int get quantity => _quantity;
  OverlayEntry? _overlayEntry;

  void decrement(BuildContext context) {
    if (_quantity > 1) {
      _quantity--;
      notifyListeners();
      _showOverlay(context);
    }
  }

  void increament(BuildContext context) {
    _quantity++;
    notifyListeners();
    _showOverlay(context);
  }

  // void _showFloatingMessage(BuildContext context) {
  //   final messenger = ScaffoldMessenger.of(context);

  //   messenger.hideCurrentSnackBar();

  //   messenger.showSnackBar(SnackBar(
  //     behavior: SnackBarBehavior.floating,
  //     content: Row(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       children: [
  //         Text('Quantity: $_quantity',
  //             style: const TextStyle(fontWeight: FontWeight.bold)),
  //         Spacer(),
  //         Text('$_quantity items'),
  //         IconButton(
  //           onPressed: () {},
  //           icon: Icon(Icons.arrow_forward),
  //         )
  //       ],
  //     ),
  //   ));
  // }

  void _showOverlay(BuildContext context) {
    final overlay = Overlay.of(context);
    _overlayEntry?.remove();

    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        bottom: 20,
        left: 20,
        right: 20,
        child: Material(
          color: AppColors.DBlue,
          child: Container(
            padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.p16, vertical: AppSizes.p12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.radius50),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Quantity: $_quantity',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                Spacer(),
                Text(
                  '$_quantity items',
                  style: TextStyle(color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    overlay.insert(_overlayEntry!);
  }
}
