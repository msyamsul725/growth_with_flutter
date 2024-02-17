import 'dart:async';

import 'package:get/get.dart';
import '../view/repeatAnimation_view.dart';

class RepeatAnimationController extends GetxController {
  RepeatAnimationView? view;
  Timer? timer;
  @override
  void onInit() {
    timer = Timer.periodic(
      const Duration(milliseconds: 900),
      (timer) {
        visible = !visible;
        update();
      },
    );
    super.onInit();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  bool visible = true;
}
