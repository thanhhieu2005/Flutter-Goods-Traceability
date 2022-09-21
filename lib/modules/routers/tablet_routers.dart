import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_traceability_mobile/modules/auth/login/presentation/tablet/login_screen.dart';
import 'package:goods_traceability_mobile/modules/auth/register/presentation/email_verify_screen.dart';
import 'package:goods_traceability_mobile/modules/auth/register/presentation/register_screen.dart';
import 'package:goods_traceability_mobile/responsive_layout/responsive_layout.dart';

class TabletGoRouter {
  final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (context, state) => ResponsiveLayout(
          mobileScaffold: Container(
            color: Colors.red,
          ),
          tabletScaffold: const TabletLoginScreen(),
        ),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const TabletRegisterScreen(),
        routes: <GoRoute>[
          GoRoute(
            path: 'email_verify',
            builder: (context, state) => const TabletEmailVerifyScreen(),
          ),
        ],
      ),
    ],
  );
}
