import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_traceability_mobile/configs/app_color.dart';
import 'package:goods_traceability_mobile/configs/app_size.dart';
import 'package:goods_traceability_mobile/configs/app_style.dart';
import 'package:goods_traceability_mobile/gen/assets.gen.dart';
import 'package:goods_traceability_mobile/utils/shared/common_button.dart';
import 'package:goods_traceability_mobile/utils/shared/common_dialog.dart';
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
    final TextEditingController pinCodeText = TextEditingController();
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
                    'X??c th???c Email', //'Email Authentication'
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
                    "Vui l??ng nh???p m?? x??c minh ???????c g???i ?????n email c???a b???n", // Please enter the verification code sent to your email
                    style: AppStyles.titleMedium.copyWith(
                      color: AppColors.kBlack,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 72.h,
                  ),
                  Pinput(
                    controller: pinCodeText,
                    autofocus: true,
                    length: 6,
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: true,
                    onCompleted: (pin) => {
                      if (pin == '123456')
                        {
                          CommonShowDialog.showConfirmDialog(
                            context: context,
                            title: 'Th??ng b??o',
                            content: 'Pin code ch??nh x??c!',
                            contentAction1: 'H???y',
                            onTapAction1: () => Navigator.pop(context),
                            contentAction2: '?????ng ??',
                            onTapAction2: () => Navigator.pop(context),
                          ),
                        }
                      else
                        {
                          CommonShowDialog.showNotiAlterDialog(
                            context: context,
                            title: 'Th??ng b??o',
                            content:
                                'M?? x??c th???c kh??ng ch??nh x??c, m???i nh???p l???i!',
                            contentAction: 'OK',
                            onTapAction: () => Navigator.pop(context),
                          ),
                        }
                    },
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
                  SizedBox(
                    height: 80.h,
                  ),
                  CommonButton(
                    width: 272.w,
                    onTap: () {
                      if (pinCodeText.text.isEmpty) {
                        CommonShowDialog.showNotiAlterDialog(
                          context: context,
                          title: "Th??ng b??o",
                          content:
                              "B???n ch??a nh???p pin code, m???i nh???p ????? x??c nh???n!",
                          contentAction: "OK",
                          onTapAction: () => Navigator.pop(context),
                        );
                      } else if (pinCodeText.text != '123456') {
                        CommonShowDialog.showNotiAlterDialog(
                          context: context,
                          title: 'Th??ng b??o',
                          content: 'M?? x??c th???c kh??ng ch??nh x??c, m???i nh???p l???i!',
                          contentAction: 'OK',
                          onTapAction: () => Navigator.pop(context),
                        );
                      } else {
                        print('Th??nh c??ng');
                      }
                    },
                    content: 'X??c th???c',
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  RichText(
                    text: TextSpan(
                      text:
                          'B???ng c??ch ti???p t???c, b???n x??c nh???n r???ng b???n ???? ?????c, hi???u v?? ?????ng ?? v???i ch??ng t??i v???',
                      style: AppStyles.labelMedium,
                      children: <TextSpan>[
                        TextSpan(
                          text: ' c??c ??i???u kho???n d???ch v???',
                          style: AppStyles.labelMedium.copyWith(
                            color: AppColors.kPrimary2,
                          ),
                        ),
                        TextSpan(
                          text: ' v??',
                          style: AppStyles.labelMedium,
                        ),
                        TextSpan(
                          text: ' ch??nh s??ch b???o m???t',
                          style: AppStyles.labelMedium.copyWith(
                            color: AppColors.kPrimary2,
                          ),
                        ),
                      ],
                    ),
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
