import 'package:device_preview/device_preview.dart';
import 'package:fhe_template/core.dart';
import 'package:fhe_template/navigationNew/view/navigationNew_view.dart';
import 'package:fhe_template/state_util.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runMainApp();
}

runMainApp() async {
  return runApp(
    const MainApp(), // Wrap your app
  );
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        // todo add your app name
        title: "GetXSkeleton",
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: HomeView());
  }
}
