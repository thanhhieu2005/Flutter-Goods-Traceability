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
  final Color? backgroundColor;
  final TextStyle? contentTextStyle;
  final double? borderRadiusSize;
  final EdgeInsetsGeometry? contentPadding;

  /// default aligment to center
  final Alignment? alignment;
  const CommonButton({
    Key? key,
    required this.onTap,
    this.height,
    this.width,
    this.alignment,
    required this.content,
    this.backgroundColor,
    this.contentTextStyle,
    this.borderRadiusSize,
    this.contentPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.center,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: height,
          width: width,
          padding: contentPadding ?? EdgeInsets.symmetric(vertical: 24.h),
          decoration: BoxDecoration(
            color: backgroundColor ?? AppColors.kPrimary1,
            borderRadius:
                BorderRadius.circular(borderRadiusSize ?? AppSizes.largeRadius),
          ),
          child: Center(
            child: Text(
              content.toUpperCase(),
              style: contentTextStyle ??
                  AppStyles.titleLarge.copyWith(
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
