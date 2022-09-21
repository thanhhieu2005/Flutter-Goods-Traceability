import 'package:flutter/material.dart';
import 'package:goods_traceability_mobile/gen/fonts.gen.dart';
import 'package:goods_traceability_mobile/configs/app_color.dart';
import 'package:goods_traceability_mobile/configs/app_style.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData mainTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: FontFamily.roboto,
    splashFactory: InkRipple.splashFactory,
    backgroundColor: AppColors.kPrimary4,
    scaffoldBackgroundColor: AppColors.kPrimary4,
    textTheme: _textTheme,
  );

  static final TextTheme _textTheme = TextTheme(
    displayLarge: AppStyles.displayLarge,
    displayMedium: AppStyles.displayMedium,
    displaySmall: AppStyles.displaySmall,
    headlineLarge: AppStyles.headlineLarge,
    headlineMedium: AppStyles.headlineMedium,
    headlineSmall: AppStyles.headlineSmall,
    titleLarge: AppStyles.titleLarge,
    titleMedium: AppStyles.titleMedium,
    titleSmall: AppStyles.titleSmall,
    labelLarge: AppStyles.labelLarge,
    labelMedium: AppStyles.labelMedium,
    labelSmall: AppStyles.labelSmall,
    bodyLarge: AppStyles.bodyLarge,
    bodyMedium: AppStyles.bodyMedium,
    bodySmall: AppStyles.bodySmall,
  );
}
