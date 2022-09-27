import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../configs/export_config.dart';

class CommonIconButton extends StatelessWidget {
  final String content;
  final String iconPath;
  final Function() onTap;
  const CommonIconButton({
    Key? key,
    required this.content,
    required this.iconPath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        decoration: BoxDecoration(
          color: AppColors.kPrimary1,
          borderRadius: BorderRadius.circular(AppSizes.mediumRadius),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              height: 16.r,
              color: AppColors.kWhite,
            ),
            SizedBox(
              width: 8.w,
            ),
            Text(
              content,
              style: AppStyles.titleSmall.copyWith(
                color: AppColors.kWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
