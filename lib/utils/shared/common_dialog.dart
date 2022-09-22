import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goods_traceability_mobile/configs/app_color.dart';
import 'package:goods_traceability_mobile/configs/app_size.dart';
import 'package:goods_traceability_mobile/configs/app_style.dart';
import 'package:goods_traceability_mobile/utils/shared/common_button.dart';

class CommonShowDialog {
  const CommonShowDialog._();

  /// Hiển thị dialog thông báo với 1 button
  static showNotiAlterDialog({
    required BuildContext context,
    required String title,
    required String content,
    required String contentAction,
    required Function() onTapAction,
  }) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        alignment: Alignment.center,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        backgroundColor: AppColors.kPrimary4,
        title: Center(
          child: Text(title),
        ),
        titleTextStyle: AppStyles.titleLarge.copyWith(
          color: AppColors.kPrimary1,
          fontWeight: FontWeight.w500,
        ),
        titlePadding: EdgeInsets.only(bottom: 12.h, top: 32.h),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(content),
          ],
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 56.w),
        actions: [
          CommonButton(
            onTap: onTapAction,
            content: contentAction,
            borderRadiusSize: AppSizes.mediumRadius,
            contentPadding: EdgeInsets.symmetric(vertical: 12.h),
            contentTextStyle: AppStyles.titleMedium.copyWith(
              color: AppColors.kWhite,
            ),
            width: 96.w,
          )
        ],
        actionsPadding: EdgeInsets.only(bottom: 32.h, right: 56.w, left: 56.w),
        actionsAlignment: MainAxisAlignment.center,
      ),
    );
  }

  /// show tính năng đang được phát triển
  static showInDevelopment({
    required BuildContext context,
  }) {
    return showNotiAlterDialog(
      context: context,
      title: 'Thông báo',
      content: 'Tính năng đang trong giai đoạn phát triển!',
      contentAction: 'OK',
      onTapAction: () => Navigator.pop(context),
    );
  }

  /// show dialog có 2 button cho người dùng lựa chọn (hoặc xác nhận)
  static showConfirmDialog({
    required BuildContext context,
    required String title,
    required String content,
    required String contentAction1,
    required Function() onTapAction1,
    required String contentAction2,
    required Function() onTapAction2,
  }) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        alignment: Alignment.center,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        backgroundColor: AppColors.kPrimary4,
        title: Center(
          child: Text(title),
        ),
        titleTextStyle: AppStyles.titleLarge.copyWith(
          color: AppColors.kPrimary1,
          fontWeight: FontWeight.w500,
        ),
        titlePadding: EdgeInsets.only(bottom: 12.h, top: 32.h),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(content),
          ],
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 56.w),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CommonButton(
                onTap: onTapAction1,
                content: contentAction1,
                borderRadiusSize: AppSizes.mediumRadius,
                contentPadding: EdgeInsets.symmetric(vertical: 12.h),
                backgroundColor: AppColors.kPrimary3,
                contentTextStyle: AppStyles.titleMedium.copyWith(
                  color: AppColors.kBlack,
                ),
                width: 96.w,
              ),
              SizedBox(
                width: 24.w,
              ),
              CommonButton(
                onTap: onTapAction2,
                content: contentAction2,
                borderRadiusSize: AppSizes.mediumRadius,
                contentPadding: EdgeInsets.symmetric(vertical: 12.h),
                contentTextStyle: AppStyles.titleMedium.copyWith(
                  color: AppColors.kWhite,
                ),
                width: 96.w,
              ),
            ],
          )
        ],
        actionsPadding: EdgeInsets.only(bottom: 32.h, right: 24.w, left: 24.w),
      ),
    );
  }
}
