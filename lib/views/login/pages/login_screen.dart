import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_traceability_mobile/configs/app_color.dart';
import 'package:goods_traceability_mobile/configs/app_size.dart';
import 'package:goods_traceability_mobile/configs/app_style.dart';
import 'package:goods_traceability_mobile/gen/assets.gen.dart';
import 'package:goods_traceability_mobile/utils/shared/common_button.dart';
import 'package:goods_traceability_mobile/utils/shared/common_text_field.dart';
import 'package:goods_traceability_mobile/views/login/widgets/divider_widget.dart';
import 'package:goods_traceability_mobile/views/login/widgets/sign_in_metamask.dart';

class TabletLoginScreen extends StatefulWidget {
  const TabletLoginScreen({super.key});

  @override
  State<TabletLoginScreen> createState() => _TabletLoginScreenState();
}

class _TabletLoginScreenState extends State<TabletLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                top: 56.h,
                bottom: 56.h,
              ),
              padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 24.h),
              constraints: BoxConstraints(maxWidth: 560.w, maxHeight: 720.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.superLargeRadius),
                color: AppColors.kPrimary4.withOpacity(0.8),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  switchToSignUp(
                    onTap: () {
                      GoRouter.of(context).go('/register');
                    },
                  ),
                  Text(
                    'Đăng nhập',
                    style: AppStyles.displayLarge.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.kPrimary1,
                    ),
                  ),
                  SizedBox(
                    height: 36.h,
                  ),
                  SignInMetaMask(
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  DividerWidget.dividerOtherSignIn(),
                  SizedBox(
                    height: 20.h,
                  ),
                  const CommonTextFormField(
                    titleForm: 'Email',
                    maxLines: 1,
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const CommonTextFormField(
                    titleForm: 'Mật khẩu',
                    maxLines: 1,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Quên mật khẩu?',
                      style: AppStyles.bodySmall
                          .copyWith(color: AppColors.kPrimary2),
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  CommonButton(
                    content: 'Đăng nhập',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget switchToSignUp({required Function() onTap}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 14.h),
          child: InkWell(
            onTap: onTap,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Bạn chưa có tài khoản?',
                  style: AppStyles.titleSmall.copyWith(
                    color: AppColors.kPrimary2,
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  '   Đăng ký ngay',
                  style: AppStyles.titleSmall.copyWith(
                    color: AppColors.kPrimary2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

