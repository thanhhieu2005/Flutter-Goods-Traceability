import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goods_traceability_mobile/configs/app_color.dart';
import 'package:goods_traceability_mobile/configs/app_size.dart';
import 'package:goods_traceability_mobile/configs/app_style.dart';

class CommonTextFormField extends StatefulWidget {
  final String titleForm;
  final bool titleRequired;
  final TextStyle? titleTextStyle;
  final bool readOnly;
  final int? maxLines;
  final Widget? prefixIcon, suffixIcon;
  final bool showPrefixIcon, showSuffixIcon;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final bool? obscureText;
  final double? width, height;
  const CommonTextFormField({
    super.key,
    this.readOnly = false,
    this.maxLines,
    this.prefixIcon,
    this.suffixIcon,
    this.showPrefixIcon = false,
    this.showSuffixIcon = false,
    this.textInputAction,
    this.textInputType,
    required this.titleForm,
    this.titleTextStyle,
    this.obscureText,
    this.titleRequired = false,
    this.width,
    this.height,
  });

  @override
  State<CommonTextFormField> createState() => _CommonTextFormFieldState();
}

class _CommonTextFormFieldState extends State<CommonTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.titleRequired
            ? RichText(
                text: TextSpan(
                  text: widget.titleForm,
                  style: widget.titleTextStyle ??
                      AppStyles.titleMedium.copyWith(
                        color: AppColors.kPrimary1,
                        fontWeight: FontWeight.w400,
                      ),
                  children: [
                    TextSpan(
                      text: ' *',
                      style: AppStyles.titleMedium.copyWith(
                        color: AppColors.kColor6,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              )
            : Text(
                widget.titleForm,
                style: widget.titleTextStyle ??
                    AppStyles.titleMedium.copyWith(
                      color: AppColors.kPrimary1,
                      fontWeight: FontWeight.w400,
                    ),
              ),
        SizedBox(
          height: 8.h,
        ),
        Container(
          width: widget.width,
          height: 48.sp,
          decoration: BoxDecoration(
            color: !widget.readOnly ? AppColors.kWhite : AppColors.kGrey,
            borderRadius: BorderRadius.circular(AppSizes.smallRadius),
            boxShadow: [
              BoxShadow(
                color: AppColors.kBlack.withOpacity(0.25),
                spreadRadius: 0,
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: TextFormField(
            cursorColor: AppColors.kPrimary1,
            readOnly: widget.readOnly,
            maxLines: widget.maxLines,
            obscureText: widget.obscureText ?? false,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
              border: InputBorder.none,
              prefixIcon: widget.showPrefixIcon ? widget.prefixIcon : null,
              suffixIcon: widget.showSuffixIcon ? widget.suffixIcon : null,
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.kColor6,
                  width: 1.r,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.kPrimary1,
                  width: 1.r,
                ),
              ),
            ),
            textInputAction: widget.textInputAction,
            style: AppStyles.titleMedium,
            keyboardType: widget.textInputType,
          ),
        ),
      ],
    );
  }
}
