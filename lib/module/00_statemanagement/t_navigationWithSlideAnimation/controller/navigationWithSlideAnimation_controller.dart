import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view/navigationWithSlideAnimation_view.dart';

class NavigationWithSlideAnimationController extends GetxController {
  NavigationWithSlideAnimationView? view;

  int selectedIndex = 0;
  List menuList = [
    {
      "icon": Icons.home,
      "label": "Home",
    },
    {
      "icon": Icons.list,
      "label": "Order",
    },
    {
      "icon": Icons.favorite,
      "label": "Favorite",
    },
    {
      "icon": Icons.person,
      "label": "Profile",
    }
  ];
}
