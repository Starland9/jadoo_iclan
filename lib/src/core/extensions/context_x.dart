import 'package:flutter/material.dart';
import 'package:jadoo_iclan/src/core/constants/app_colors.dart';

extension ContextX on BuildContext {
  TextTheme get tt => Theme.of(this).textTheme;
  ColorScheme get cs => Theme.of(this).colorScheme;

  AppColors get colors => AppColors(context: this);
}
