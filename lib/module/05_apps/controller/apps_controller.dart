import 'package:fhe_template/module/05_apps/main/lib_articale/main.dart';

import 'package:fhe_template/module/05_apps/main/lib_furniture/main.dart';
import 'package:fhe_template/module/05_apps/main/lib_smart_home/core/app/app.dart';
import 'package:fhe_template/module/05_apps/main/lib_smart_home_b/main.dart';
import 'package:fhe_template/module/05_apps/main/lib_startbuck/main.dart';
import 'package:get/get.dart';
import '../main/lib_magicBook/main.dart';
import '../view/apps_view.dart';

class AppsController extends GetxController {
  AppsView? view;

  List apps = [
    {'label': 'Article', 'view': const MyAppArticle()},
    {'label': 'Magic Book', 'view': const MyAppMagicBook()},
    {'label': 'Smart Home', 'view': const SmartHomeApp()},
    {'label': 'Smart Home B', 'view': const MyAppSmartHomeB()},
    {'label': 'Furniture App', 'view': const MyAppFurniture()},
    {'label': 'Startbuck UI', 'view': const MyAppStartBuck()},
  ];
}
