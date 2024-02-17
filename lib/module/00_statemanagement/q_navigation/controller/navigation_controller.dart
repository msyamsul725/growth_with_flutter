import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view/navigation_view.dart';

class NavigationController extends GetxController {
  NavigationView? view;

  int selectedIndex = 0;
  List navigationItems = [
    {
      "label": "Home",
      "icon": Icons.home,
    },
    {
      "label": "Order",
      "icon": Icons.list,
    },
    {
      "label": "Favorite",
      "icon": Icons.favorite,
    },
    {
      "label": "Profile",
      "icon": Icons.person,
    }
  ];
}
