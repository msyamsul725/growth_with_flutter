import 'package:fhe_template/module/05_apps/main/lib_smart_home_b/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class MyAppSmartHomeB extends StatefulWidget {
  const MyAppSmartHomeB({Key? key}) : super(key: key);

  @override
  State<MyAppSmartHomeB> createState() => _MyAppSmartHomeBState();
}

class _MyAppSmartHomeBState extends State<MyAppSmartHomeB> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter IoT UI Challenge',
      theme: ThemeData(
          fontFamily: "Poppins",
          sliderTheme: const SliderThemeData(
            trackShape: RectangularSliderTrackShape(),
            trackHeight: 2.5,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 15.0),
          )),
      home: const HomePage(),
    );
  }
}
