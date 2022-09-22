import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goods_traceability_mobile/configs/app_color.dart';

class TabletAdminScreen extends StatelessWidget {
  const TabletAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimary4,
      appBar: AppBar(
        backgroundColor: AppColors.kPrimary2,
      ),
      drawer: NavigationDrawerWidget(),
      body: Column(),
    );
  }
}

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Material(
        color: AppColors.kPrimary2,
        child: ListView(
          children: [
            Container(
              height: 64.h,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
