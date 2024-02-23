import 'package:fhe_template/module/05_apps/main/lib_articale/screens/drawer/drawer_menu.dart';
import 'package:fhe_template/module/05_apps/main/lib_articale/screens/drawer/drawer_profile.dart';
import 'package:fhe_template/module/05_apps/main/lib_articale/shared/colors.dart';
import 'package:fhe_template/module/05_apps/main/lib_articale/shared/sizes.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  final Animation<Offset> slideAnimation;

  const DrawerScreen(this.slideAnimation, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: screenHorizontalPadding, vertical: 70),
      color: blackishColor,
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.center,
            child: DrawerMenu(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SlideTransition(
              position: slideAnimation,
              child: const DrawerProfile(),
            ),
          ),
        ],
      ),
    );
  }
}
