import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goods_traceability_mobile/configs/app_theme.dart';
import 'package:goods_traceability_mobile/modules/routers/tablet_routers.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = TabletGoRouter().router;
    return ScreenUtilInit(
      designSize: const Size(1400, 950),
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.mainTheme,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          routeInformationProvider: router.routeInformationProvider,
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
        );
      },
    );
  }
}

