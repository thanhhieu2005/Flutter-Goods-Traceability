import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goods_traceability_mobile/configs/app_color.dart';
import 'package:goods_traceability_mobile/utils/shared/common_icon_button.dart';
import 'package:goods_traceability_mobile/utils/shared/common_title_page.dart';
import 'package:goods_traceability_mobile/views/dashboard/widgets/info_system_card.dart';

import '../../../../gen/assets.gen.dart';

class TabletDashBoardScreen extends StatelessWidget {
  const TabletDashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.kPrimary4,
      ),
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 12.h,
          ),
          const CommonTitlePage(
            content: 'Dashboard',
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InfoSystemCard(
                title: 'Số thành viên trong hệ thống',
                iconPath: Assets.icons.icUser.path,
                content: '20',
                subContent: 'thành viên',
              ),
              InfoSystemCard(
                title: 'Số lô hàng trong hệ thống',
                iconPath: Assets.icons.icAssignRole.path,
                content: '7',
                subContent: 'lô hàng',
              ),
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CommonIconButton(
                content: 'Lô mới',
                iconPath: Assets.icons.icLogout.path,
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
