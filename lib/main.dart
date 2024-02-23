import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'module/dashboard/view/dashboard_view.dart';

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
        home: DashboardView());
  }
}
