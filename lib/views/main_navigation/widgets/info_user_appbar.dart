import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goods_traceability_mobile/configs/app_color.dart';
import 'package:goods_traceability_mobile/configs/app_style.dart';

class InfoUserAppBar extends StatelessWidget {
  final String userFirstName;
  const InfoUserAppBar({
    Key? key,
    required this.userFirstName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 32.w),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
                text: 'Hi, ',
                style: AppStyles.titleMedium.copyWith(
                  color: AppColors.kPrimary3,
                ),
                children: [
                  TextSpan(
                    text: userFirstName,
                    style: AppStyles.titleMedium.copyWith(
                      color: AppColors.kPrimary3,
                    ),
                  ),
                ]),
          ),
          SizedBox(
            width: 12.w,
          ),
          // avatar
          ClipOval(
            child: Container(
              height: 36.r,
              width: 36.r,
              color: Colors.blueAccent,
              
            ),
          ),
        ],
      ),
    );
  }
}
