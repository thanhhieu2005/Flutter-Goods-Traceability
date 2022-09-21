import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goods_traceability_mobile/configs/app_color.dart';
import 'package:goods_traceability_mobile/configs/app_size.dart';
import 'package:goods_traceability_mobile/configs/app_style.dart';

class CommonButton extends StatelessWidget {
  final Function() onTap;
  final double? height;
  final double? width;
  final String content;

  /// default aligment to center
  final Alignment? alignment;
  const CommonButton({
    Key? key,
    required this.onTap,
    this.height,
    this.width,
    this.alignment,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Align(
        alignment: alignment ?? Alignment.center,
        child: Container(
          height: height,
          width: width,
          padding: EdgeInsets.symmetric(vertical: 24.h),
          decoration: BoxDecoration(
            color: AppColors.kPrimary1,
            borderRadius: BorderRadius.circular(AppSizes.largeRadius),
          ),
          child: Center(
            child: Text(
              content,
              style: AppStyles.titleLarge.copyWith(
                color: AppColors.kWhite,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
