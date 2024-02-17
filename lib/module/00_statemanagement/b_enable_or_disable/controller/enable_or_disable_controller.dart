import 'package:get/get.dart';
import '../view/enable_or_disable_view.dart';

class EnableOrDisableController extends GetxController {
  EnableOrDisableView? view;
  bool passwordVisivle = false;
  var email = "".obs;
  var password = "".obs;
  // Rxn<String>? email = Rxn<String>();
  // Rxn<String>? password = Rxn<String>();

  bool get loginButtonEnabled {
    if (email.isNotEmpty && password.isNotEmpty) {
      return true;
    }
    return false;
  }
}
