import 'package:fhe_template/module/05_apps/main/lib_furniture/const.dart';
import 'package:fhe_template/module/05_apps/main/lib_furniture/home_page.dart';
import 'package:flutter/material.dart';

class MyAppFurniture extends StatelessWidget {
  const MyAppFurniture({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Furnitures App',
      theme: ThemeData(
        primarySwatch: MaterialColor(
          primaryColor,
          <int, Color>{
            50: const Color(primaryColor).withOpacity(0.1),
            100: const Color(primaryColor).withOpacity(0.2),
            200: const Color(primaryColor).withOpacity(0.3),
            300: const Color(primaryColor).withOpacity(0.4),
            400: const Color(primaryColor).withOpacity(0.5),
            500: const Color(primaryColor).withOpacity(0.6),
            600: const Color(primaryColor).withOpacity(0.7),
            700: const Color(primaryColor).withOpacity(0.8),
            800: const Color(primaryColor).withOpacity(0.9),
            900: const Color(primaryColor).withOpacity(1.0),
          },
        ),
        fontFamily: 'Poppins',
      ),
      home: const HomePage(),
    );
  }
}
