import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goods_traceability_mobile/configs/app_color.dart';
import 'package:goods_traceability_mobile/configs/app_style.dart';

class DividerWidget {
  const DividerWidget._();

  static Widget dividerOtherSignIn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 2.h,
          width: 140.w,
          decoration: const BoxDecoration(
            color: AppColors.kColor8,
            shape: BoxShape.rectangle,
          ),
        ),
        Text(
          'Hoặc',
          style: AppStyles.titleMedium,
        ),
        Container(
          height: 2.h,
          width: 140.w,
          decoration: const BoxDecoration(
            color: AppColors.kColor8,
            shape: BoxShape.rectangle,
          ),
        ),
      ],
    );
  }
}
