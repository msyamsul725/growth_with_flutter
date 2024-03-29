import 'package:fhe_template/module/05_apps/main/lib_startbuck/pages/home/home_page.dart';
import 'package:fhe_template/module/05_apps/main/lib_startbuck/styles.dart';
import 'package:flutter/material.dart';

class MyAppStartBuck extends StatelessWidget {
  const MyAppStartBuck({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starbucks UI Challenge',
      theme: ThemeData(
          primaryColor: const Color(0xFF49A878),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: Fonts.averta,
          textTheme: const TextTheme(
            bodyMedium: TextStyle(height: 1.2),
          )),
      home: const HomePage(),
    );
  }
}
