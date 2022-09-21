import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goods_traceability_mobile/app.dart';

void main() {
  GoRouter.setUrlPathStrategy(UrlPathStrategy.path);
  runApp(const MyApp());
}
