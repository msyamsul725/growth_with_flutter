import 'package:fhe_template/module/05_apps/main/lib_articale/shared/colors.dart';
import 'package:flutter/services.dart';

class CustomSystemUiOverlayStyle {
  static const light = SystemUiOverlayStyle(
    statusBarColor: transparentColor,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.dark,
  );

  static const dark = SystemUiOverlayStyle(
    statusBarColor: transparentColor,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  );
}
