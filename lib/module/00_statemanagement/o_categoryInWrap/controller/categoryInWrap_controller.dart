import 'package:get/get.dart';
import '../view/categoryInWrap_view.dart';

class CategoryInWrapController extends GetxController {
  CategoryInWrapView? view;

  List categoryList = [
    "Food",
    "Drink",
    "Main Course",
    "Snack",
    "Ice Cream",
    "Fruits",
  ];
  String? selectedCategory;
}
