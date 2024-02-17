import 'package:fhe_template/services/upp&lowcase.dart';
import 'package:get/get.dart';
import '../view/Uppercase & Lower Case_view.dart';

class UppercaseLowerCaseController extends GetxController {
  UppercaseLowerCaseView? view;

  var human = Human(name: "sem", age: "26").obs;

  void changUpperCase() {
    human.update((_) {
      human.value.name = human.value.name.toString().toUpperCase();
    });
  }

  void changeLowerCase() {
    human.update((_) {
      human.value.name = human.value.name.toString().toLowerCase();
    });
  }
}
