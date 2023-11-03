import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static final themeData = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
    useMaterial3: true,
  );
}
