import 'package:flutter/material.dart';

class AppSizes {
  // Spacing
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;
  static const double xxl = 48.0;
  static const double xxxl = 96.0;

  // Image sizes
  static const double imgXs = 24.0;
  static const double imgSm = 48.0;
  static const double imgMd = 150.0;
  static const double imgLg = 200.0;
  static const double imgXl = 250.0;
  static const double imgXxl = 300.0;
  static const double imgXxxl = 350.0;
  static const double imgXxxxl = 400.0;

  // Border radius
  static const double radiusSm = 8.0;
  static const double radiusMd = 16.0;
  static const double radiusLg = 24.0;

  // Icon sizes
  static const double iconSm = 16.0;
  static const double iconMd = 24.0;
  static const double iconLg = 32.0;

  // Font sizes
  static const double fontSm = 12.0;
  static const double fontMd = 16.0;
  static const double fontLg = 20.0;
  static const double fontXl = 24.0;
  static const double fontXxl = 26.0;
  static const double fontXxxl = 30.0;
}

class AppPadding {
  static const EdgeInsets allSm = EdgeInsets.all(AppSizes.sm);
  static const EdgeInsets allMd = EdgeInsets.all(AppSizes.md);
  static const EdgeInsets allLg = EdgeInsets.all(AppSizes.lg);

  static const EdgeInsets horizontalSm =
      EdgeInsets.symmetric(horizontal: AppSizes.sm);

  static const EdgeInsets horizontalMd =
      EdgeInsets.symmetric(horizontal: AppSizes.md);

  static const EdgeInsets horizontalLg =
      EdgeInsets.symmetric(horizontal: AppSizes.lg);

  static const EdgeInsets verticalSm =
      EdgeInsets.symmetric(vertical: AppSizes.sm);

  static const EdgeInsets verticalMd =
      EdgeInsets.symmetric(vertical: AppSizes.md);

  static const EdgeInsets verticalLg =
      EdgeInsets.symmetric(vertical: AppSizes.lg);
}
