import 'package:fhe_template/module/00_statemanagement/v_theme/theme/dark_theme.dart';
import 'package:fhe_template/module/00_statemanagement/v_theme/theme/light_theme.dart';
import 'package:fhe_template/module/00_statemanagement/v_theme/theme/purple_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view/theme_view.dart';

class ThemeController extends GetxController {
  ThemeView? view;

  List<ThemeData> themeList = [
    lightTheme,
    darkTheme,
    purpleTheme,
  ];
  int selectedindex = 0;
}
