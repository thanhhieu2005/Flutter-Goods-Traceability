import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:goods_traceability_mobile/configs/app_color.dart';
import 'package:goods_traceability_mobile/configs/app_size.dart';
import 'package:goods_traceability_mobile/configs/app_style.dart';
import 'package:goods_traceability_mobile/gen/assets.gen.dart';
import 'package:goods_traceability_mobile/views/dashboard/pages/dashboard_screen.dart';
import 'package:goods_traceability_mobile/views/main_navigation/widgets/info_user_appbar.dart';

class TabletMainScreen extends StatefulWidget {
  const TabletMainScreen({super.key});

  @override
  State<TabletMainScreen> createState() => _TabletMainScreenState();
}

Widget navigationPages(DrawerSections currentPage) {
  switch (currentPage) {
    case DrawerSections.dashboard:
      return const TabletDashBoardScreen();
    case DrawerSections.assignRole:
      return Container(
        color: Colors.blue,
      );
    case DrawerSections.profile:
      return Container(
        color: Colors.green,
      );
    case DrawerSections.farmInspection:
      return Container(
        color: Colors.yellow,
      );
    case DrawerSections.harvesting:
      return Container(
        color: Colors.orange,
      );
    case DrawerSections.exporting:
      return Container(
        color: Colors.purple,
      );
    case DrawerSections.importing:
      return Container(
        color: Colors.pink,
      );
    case DrawerSections.processing:
      return Container(
        color: Colors.cyanAccent,
      );
    default:
      return Container();
  }
}

class _TabletMainScreenState extends State<TabletMainScreen> {
  var currentPage = DrawerSections
      .dashboard; // cần kiểm tra người vào đầu tiên để set current page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimary4,
      appBar: AppBar(
        backgroundColor: AppColors.kPrimary2,
        actions: [
          SvgPicture.asset(
            Assets.icons.icNoti.path,
            color: AppColors.kWhite,
          ),
          SizedBox(
            width: 24.w,
          ),
          Container(
            color: AppColors.kPrimary3,
            padding: EdgeInsets.symmetric(horizontal: 1.w),
            margin: EdgeInsets.symmetric(vertical: 12.h),
          ),
          SizedBox(
            width: 24.w,
          ),
          const InfoUserAppBar(
            userFirstName: 'Hiếu',
          ),
        ],
      ),
      drawer: Drawer(
        elevation: 0,
        child: Material(
          color: AppColors.kPrimary2,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: Assets.images.imageTruck.image().image,
            //     alignment: Alignment.center,
            //   ),
            // ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  color: AppColors.kPrimary2,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 56.r,
                        width: 56.r,
                        decoration: const BoxDecoration(
                          color: AppColors.kPrimary3,
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Text(
                        'Tên của App',
                        style: AppStyles.titleLarge.copyWith(
                          color: AppColors.kPrimary3,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 36.h,
                ),
                // cần lấy thông tin của user đăng nhập để check chức năng
                myDrawerList(UserRole.admin),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      Assets.images.imageTruck.path,
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(AppSizes.smallRadius),
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(12.r),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              Assets.icons.icLogout.path,
                              color: AppColors.kPrimary3,
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              'Logout',
                              style: AppStyles.titleMedium.copyWith(
                                color: AppColors.kPrimary3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: navigationPages(currentPage),
    );
  }

  Widget myDrawerList(UserRole userRole) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Divider(
              height: 2.r,
              color: AppColors.kPrimary3,
              thickness: 1.r,
            ),
          ),
          SizedBox(
            height: 36.h,
          ),
          Text(
            'MENU',
            style: AppStyles.titleMedium.copyWith(
              color: AppColors.kWhite,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          menuItem(
            index: 1,
            iconPath: Assets.icons.icDashboard.path,
            title: 'Dashboard',
            selected: currentPage == DrawerSections.dashboard ? true : false,
            visible: userRole == UserRole.admin ? true : false,
          ),
          SizedBox(
            height: 12.h,
          ),
          menuItem(
            index: 2,
            iconPath: Assets.icons.icAssignRole.path,
            title: 'Assign Role',
            selected: currentPage == DrawerSections.assignRole ? true : false,
            visible: userRole == UserRole.admin ? true : false,
          ),
        ],
      ),
    );
  }

  Widget menuItem({
    required int index,
    required String iconPath,
    required String title,
    required bool selected,
    required bool visible,
  }) {
    return Visibility(
      visible: visible,
      child: Material(
        color: selected ? AppColors.kPrimary1 : Colors.transparent,
        borderRadius: BorderRadius.circular(AppSizes.smallRadius),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
            setState(() {
              switch (index) {
                case 1:
                  currentPage = DrawerSections.dashboard;
                  break;
                case 2:
                  currentPage = DrawerSections.assignRole;
                  break;
                case 3:
                  currentPage = DrawerSections.farmInspection;
                  break;
                case 4:
                  currentPage = DrawerSections.harvesting;
                  break;
                case 5:
                  currentPage = DrawerSections.exporting;
                  break;
                case 6:
                  currentPage = DrawerSections.importing;
                  break;
                case 7:
                  currentPage = DrawerSections.processing;
                  break;
                case 8:
                  currentPage = DrawerSections.profile;
                  break;
                default:
              }
            });
          },
          borderRadius: BorderRadius.circular(AppSizes.smallRadius),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 12.h),
            child: Row(
              children: [
                Expanded(
                  child: SvgPicture.asset(
                    iconPath,
                    color: selected ? AppColors.kPrimary3 : AppColors.kWhite,
                    height: 32.r,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    title,
                    style: AppStyles.titleMedium.copyWith(
                      color: selected ? AppColors.kPrimary3 : AppColors.kWhite,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  assignRole,
  profile,
  farmInspection,
  harvesting,
  exporting,
  importing,
  processing,
}

enum UserRole {
  none,
  admin,
  farmInspector,
  harvester,
  exporter,
  importer,
  processor,
}

extension UserRoleExtension on UserRole {
  int get value {
    final values = {
      UserRole.none: 0,
      UserRole.admin: 1,
      UserRole.farmInspector: 2,
      UserRole.harvester: 3,
      UserRole.exporter: 4,
      UserRole.importer: 5,
      UserRole.processor: 6,
    };

    return values[this]!;
  }

  static UserRole fromInt(int value) {
    final values = {
      0: UserRole.none,
      1: UserRole.admin,
      2: UserRole.farmInspector,
      3: UserRole.harvester,
      4: UserRole.exporter,
      5: UserRole.importer,
      6: UserRole.processor,
    };

    return values[value]!;
  }
}
