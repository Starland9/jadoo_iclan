import 'package:flutter/material.dart';
import 'package:jadoo_iclan/src/core/constants/app_colors.dart';

extension ContextX on BuildContext {
  TextTheme get tt => Theme.of(this).textTheme;
  ColorScheme get cs => Theme.of(this).colorScheme;

  AppColors get colors => AppColors(context: this);

  bool get isMobileLayout => MediaQuery.of(this).size.width < 600;
  bool get isTabletLayout =>
      MediaQuery.of(this).size.width >= 600 &&
      MediaQuery.of(this).size.width < 1200;

  bool get isDesktopLayout => MediaQuery.of(this).size.width >= 1200;

  bool get isMobileOrTablet => isMobileLayout || isTabletLayout;

  Axis get flexAxis => !isDesktopLayout ? Axis.vertical : Axis.horizontal;
}
