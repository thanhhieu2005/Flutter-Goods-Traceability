import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  const AppStyles._();

  /// display large
  static TextStyle displayLarge = TextStyle(
    fontSize: 56.sp,
    fontWeight: FontWeight.normal,
    height: (64 / 56).sp,
  );

  /// display medium
  static TextStyle displayMedium = TextStyle(
      fontSize: 48.sp, fontWeight: FontWeight.normal, height: (56 / 48).sp);

  /// display small
  static TextStyle displaySmall = TextStyle(
    fontSize: 36.sp,
    fontWeight: FontWeight.normal,
    height: (48 / 36).sp,
  );

  /// headline large
  static TextStyle headlineLarge = TextStyle(
      fontSize: 32.sp, fontWeight: FontWeight.w700, height: (40 / 32).sp);

  /// headline medium
  static TextStyle headlineMedium = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.w700,
    height: (36 / 28).sp,
  );

  /// headline small
  static TextStyle headlineSmall = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    height: (32 / 24).sp,
  );

  /// title large
  static TextStyle titleLarge = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w400,
    height: (32 / 24).sp,
  );

  /// title medium
  static TextStyle titleMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    height: (20 / 16).sp,
  );

  /// title small
  static TextStyle titleSmall = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    height: (18 / 14).sp,
  );

  /// label large
  static TextStyle labelLarge = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    height: (18 / 14).sp,
  );

  /// label medium
  static TextStyle labelMedium = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    height: (16 / 12).sp,
  );

  /// label small
  static TextStyle labelSmall = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.normal,
    height: (14 / 11).sp,
  );

  /// body large
  static TextStyle bodyLarge = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    height: (20 / 16).sp,
  );

  /// body medium
  static TextStyle bodyMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    height: (18 / 14).sp,
  );

  /// body small
  static TextStyle bodySmall = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    height: (16 / 12).sp,
  );
}
