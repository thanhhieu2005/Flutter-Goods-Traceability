import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:goods_traceability_mobile/configs/app_color.dart';
import 'package:goods_traceability_mobile/configs/app_size.dart';
import 'package:goods_traceability_mobile/configs/app_style.dart';

class InfoSystemCard extends StatelessWidget {
  final String title;
  final String iconPath;
  final String content;
  final String subContent;
  const InfoSystemCard({
    Key? key,
    required this.title,
    required this.iconPath,
    required this.content,
    required this.subContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 64.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        borderRadius: BorderRadius.circular(AppSizes.mediumRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.titleMedium.copyWith(
              color: AppColors.kPrimary1,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                iconPath,
                color: AppColors.kPrimary1,
                height: 64.r,
              ),
              SizedBox(
                width: 164.w,
              ),
              RichText(
                text: TextSpan(
                  text: content,
                  style: AppStyles.headlineSmall.copyWith(
                    color: AppColors.kPrimary1,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    const TextSpan(
                      text: ' ',
                    ),
                    TextSpan(
                      text: subContent,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
