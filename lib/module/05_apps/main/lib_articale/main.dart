import 'package:fhe_template/module/05_apps/main/lib_articale/screens/_home_screen.dart';
import 'package:fhe_template/module/05_apps/main/lib_articale/shared/colors.dart';
import 'package:flutter/material.dart';

class MyAppArticle extends StatelessWidget {
  const MyAppArticle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Articles App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: blackishColor),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
