import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goods_traceability_mobile/configs/app_color.dart';
import 'package:goods_traceability_mobile/configs/app_style.dart';
import 'package:goods_traceability_mobile/gen/assets.gen.dart';

class SignInMetaMask extends StatelessWidget {
  final VoidCallback onTap;
  const SignInMetaMask({
    Key? key, required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffF6851B),
          borderRadius: BorderRadius.circular(10.r),
        ),
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 32.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Đăng nhập với MetaMask',
              style: AppStyles.bodyLarge.copyWith(
                color: AppColors.kWhite,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              width: 4.w,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.kWhite,
              ),
              child: Assets.images.logoMetamask.image(),
            ),
          ],
        ),
      ),
    );
  }
}
