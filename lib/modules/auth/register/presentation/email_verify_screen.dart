import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_traceability_mobile/configs/app_color.dart';
import 'package:goods_traceability_mobile/configs/app_size.dart';
import 'package:goods_traceability_mobile/configs/app_style.dart';
import 'package:goods_traceability_mobile/gen/assets.gen.dart';
import 'package:pinput/pinput.dart';

class TabletEmailVerifyScreen extends StatefulWidget {
  const TabletEmailVerifyScreen({super.key});

  @override
  State<TabletEmailVerifyScreen> createState() =>
      _TabletEmailVerifyScreenState();
}

class _TabletEmailVerifyScreenState extends State<TabletEmailVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: Assets.images.desktopLoginBackground.image().image,
            fit: BoxFit.cover,
          )),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 64.h,
                horizontal: 64.w,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 36.h,
                horizontal: 48.w,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.superLargeRadius),
                color: AppColors.kPrimary4.withOpacity(0.8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: AppColors.kPrimary1,
                        size: 48.r,
                      ),
                    ),
                  ),
                  Text(
                    'Email Authentication',
                    style: AppStyles.displayLarge.copyWith(
                      color: AppColors.kPrimary1,
                      fontSize: 56.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  Text(
                    'Please verification code sent to your email',
                    style: AppStyles.titleMedium.copyWith(
                      color: AppColors.kBlack,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 72.h,
                  ),
                  Pinput(
                    length: 6,
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    // validator: (s) {
                    //   // return s == '123456' ? null : 'Pin is incorrect';
                    // },
                    showCursor: true,
                    onCompleted: (pin) => {},
                    animationCurve: Curves.linear,
                    cursor: Container(), // hide cursor
                    defaultPinTheme: PinTheme(
                      height: 72.r,
                      width: 72.r,
                      textStyle: AppStyles.headlineLarge.copyWith(
                        color: AppColors.kPrimary1,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.kWhite,
                        border: Border.all(color: AppColors.kPrimary1),
                        borderRadius:
                            BorderRadius.circular(AppSizes.mediumRadius),
                      ),
                    ),
                    focusedPinTheme: PinTheme(
                      height: 72.r,
                      width: 72.r,
                      textStyle: AppStyles.headlineLarge.copyWith(
                        color: AppColors.kPrimary1,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.kWhite,
                        border:
                            Border.all(color: AppColors.kPrimary1, width: 4.r),
                        borderRadius:
                            BorderRadius.circular(AppSizes.mediumRadius),
                      ),
                    ),
                    separator: SizedBox(width: 52.w),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
