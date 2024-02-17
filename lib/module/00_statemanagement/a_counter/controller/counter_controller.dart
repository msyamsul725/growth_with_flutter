import 'package:get/get.dart';
import '../view/counter_view.dart';

class CounterController extends GetxController {
  CounterView? view;

  var counter = 0.obs;

  addQty() {
    counter++;
  }

  decQty() {
    if (counter == 0.obs) return;
    counter--;
  }
}
