import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_traceability_mobile/configs/app_color.dart';
import 'package:goods_traceability_mobile/configs/app_size.dart';
import 'package:goods_traceability_mobile/configs/app_style.dart';
import 'package:goods_traceability_mobile/gen/assets.gen.dart';
import 'package:goods_traceability_mobile/utils/shared/common_button.dart';
import 'package:goods_traceability_mobile/utils/shared/common_text_field.dart';

class TabletLoginScreen extends StatefulWidget {
  const TabletLoginScreen({super.key});

  @override
  State<TabletLoginScreen> createState() => _TabletLoginScreenState();
}

class _TabletLoginScreenState extends State<TabletLoginScreen> {
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
                top: 64.h,
                bottom: 64.h,
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
                  switchToSignUp(
                    onTap: () {
                      GoRouter.of(context).go('/register');
                    },
                  ),
                  Text(
                    'Sign In',
                    style: AppStyles.displayLarge.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.kPrimary1,
                    ),
                  ),
                  SizedBox(
                    height: 36.h,
                  ),
                  signInMetaMask(),
                  SizedBox(
                    height: 24.h,
                  ),
                  dividerOtherSignIn(),
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
                    titleForm: 'Password',
                    maxLines: 1,
                    textInputType: TextInputType.none,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password?',
                      style: AppStyles.labelSmall
                          .copyWith(color: AppColors.kPrimary2),
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  CommonButton(
                    content: 'Login',
                    width: 280.w,
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
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 14.h),
            child: Text(
              'No account?' '\n' ' Register now',
              style: AppStyles.titleSmall.copyWith(
                color: AppColors.kPrimary2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget signInMetaMask() {
    return Container(
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
            'Sign in with MetaMask',
            style: AppStyles.bodyLarge.copyWith(
              color: AppColors.kWhite,
            ),
          ),
          SizedBox(
            width: 4.w,
          ),
          Container(
            height: 38.r,
            width: 38.r,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.kWhite,
            ),
            child: Assets.images.logoMetamask.image(),
          ),
        ],
      ),
    );
  }

  Widget dividerOtherSignIn() {
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
          'Or',
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
