import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goods_traceability_mobile/configs/app_color.dart';
import 'package:goods_traceability_mobile/configs/app_size.dart';
import 'package:goods_traceability_mobile/configs/app_style.dart';

class CommonTitlePage extends StatelessWidget {
  final String content;
  final BorderRadiusGeometry? customBorderRadius;
  const CommonTitlePage({
    Key? key,
    required this.content,
    this.customBorderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColors.kPrimary1,
        borderRadius: customBorderRadius ?? BorderRadius.circular(AppSizes.superLargeRadius),
      ),
      child: Text(
        content,
        style: AppStyles.headlineLarge.copyWith(
          color: AppColors.kWhite,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
