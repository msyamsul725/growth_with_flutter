import 'dart:io';

import 'package:fhe_template/module/05_apps/main/lib_magicBook/module/dashboard/view/dashboard_view.dart';
import 'package:fhe_template/module/05_apps/main/lib_magicBook/module/unsupported_platform/view/unsupported_platform_view.dart';
import 'package:fhe_template/state_util.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

/*
MagicBook
*/

class MyAppMagicBook extends StatelessWidget {
  const MyAppMagicBook({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: Colors.grey[200],
        cardTheme: CardTheme(
          elevation: 1.0,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
      ),
      home: !kIsWeb && Platform.isAndroid
          ? const DashboardView()
          : const UnsupportedPlatformView(),
    );
  }
}
