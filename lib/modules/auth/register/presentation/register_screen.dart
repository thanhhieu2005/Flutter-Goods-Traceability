import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_traceability_mobile/configs/app_color.dart';
import 'package:goods_traceability_mobile/configs/app_size.dart';
import 'package:goods_traceability_mobile/configs/app_style.dart';
import 'package:goods_traceability_mobile/gen/assets.gen.dart';
import 'package:goods_traceability_mobile/utils/shared/common_button.dart';
import 'package:goods_traceability_mobile/utils/shared/common_text_field.dart';

class TabletRegisterScreen extends StatefulWidget {
  const TabletRegisterScreen({super.key});

  @override
  State<TabletRegisterScreen> createState() => _TabletRegisterScreenState();
}

class _TabletRegisterScreenState extends State<TabletRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimary4,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Assets.images.desktopLoginBackground.image().image,
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(
                right: 80.w,
                top: 36.h,
                bottom: 36.h,
              ),
              padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 12.h),
              constraints: BoxConstraints(
                maxWidth: 560.w,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.superLargeRadius),
                color: AppColors.kPrimary4.withOpacity(0.8),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      context.go('/');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 14.h),
                          child: Text(
                            'Already account?' '\n' ' Login here',
                            style: AppStyles.titleSmall.copyWith(
                              color: AppColors.kPrimary2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Sign Up',
                    style: AppStyles.displayLarge.copyWith(
                      color: AppColors.kPrimary1,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CommonTextFormField(
                        titleForm: 'First Name',
                        titleRequired: true,
                        maxLines: 1,
                        width: 240.w,
                      ),
                      CommonTextFormField(
                        titleForm: 'Last Name',
                        titleRequired: true,
                        maxLines: 1,
                        width: 240.w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  const CommonTextFormField(
                    titleForm: 'Phone Number',
                    titleRequired: true,
                    maxLines: 1,
                    textInputType: TextInputType.phone,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  const CommonTextFormField(
                    titleForm: 'Email',
                    titleRequired: true,
                    maxLines: 1,
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  const CommonTextFormField(
                    titleForm: 'Password',
                    titleRequired: true,
                    maxLines: 1,
                    textInputType: TextInputType.none,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  const CommonTextFormField(
                    titleForm: 'Confirm Password',
                    titleRequired: true,
                    maxLines: 1,
                    textInputType: TextInputType.none,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  CommonButton(
                    content: 'Sign Up',
                    width: 280.w,
                    onTap: () {
                      context.go('/register/email_verify');
                    },
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
