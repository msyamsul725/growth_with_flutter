import 'package:fhe_template/core.dart';
import 'package:fhe_template/module/05_apps/main/lib_articale/screens/drawer/_drawer_screen.dart';
import 'package:fhe_template/module/05_apps/main/lib_articale/screens/trending/_trending_screen.dart';
import 'package:fhe_template/module/05_apps/main/lib_articale/shared/colors.dart';
import 'package:fhe_template/module/05_apps/main/lib_articale/shared/custom_system_ui_overlay_style.dart';
import 'package:fhe_template/module/05_apps/main/lib_articale/shared/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final ScrollController _scrollController =
      ScrollController(keepScrollOffset: false);
  bool _drawerIsOpen = false;
  late double _screenWidth;
  late AnimationController _primaryAnimationController;
  late AnimationController _secondaryAnimationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    });

    _primaryAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
      reverseDuration: const Duration(milliseconds: 600),
    );

    _secondaryAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.8).animate(
      CurvedAnimation(
          parent: _primaryAnimationController,
          curve: Curves.easeOutExpo,
          reverseCurve: Curves.easeInOutCubic),
    );

    _fadeAnimation = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(parent: _primaryAnimationController, curve: Curves.ease),
    );

    _slideAnimation =
        Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero).animate(
      CurvedAnimation(
          parent: _secondaryAnimationController, curve: Curves.easeInOutSine),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _primaryAnimationController.dispose();
    _secondaryAnimationController.dispose();
    super.dispose();
  }

  void _scrollToDrawer() {
    _primaryAnimationController.forward();
    _secondaryAnimationController.forward();

    _scrollController.animateTo(
      _scrollController.position.minScrollExtent,
      duration: const Duration(milliseconds: 700),
      curve: Curves.fastOutSlowIn,
    );

    setState(() {
      _drawerIsOpen = true;
    });
  }

  void _scrollToTrending() async {
    _secondaryAnimationController.reverse();
    await Future.delayed(_secondaryAnimationController.duration! * 0.3);
    _primaryAnimationController.reverse();

    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 600),
      curve: Curves.fastOutSlowIn,
    );

    setState(() {
      _drawerIsOpen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    _screenWidth = MediaQuery.of(context).size.width;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: CustomSystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: blackishColor,
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              ListView(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(
                    width: _screenWidth * 0.75,
                    child: DrawerScreen(_slideAnimation),
                  ),
                  SizedBox(
                    width: _screenWidth,
                    child: TrendingScreen(
                      scaleAnimation: _scaleAnimation,
                      fadeAnimation: _fadeAnimation,
                      drawerIsOpen: _drawerIsOpen,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: screenHorizontalPadding),
                child: IconButton(
                  onPressed:
                      _drawerIsOpen ? _scrollToTrending : _scrollToDrawer,
                  icon: AnimatedIcon(
                    icon: AnimatedIcons.menu_close,
                    progress: _primaryAnimationController,
                    color: whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
