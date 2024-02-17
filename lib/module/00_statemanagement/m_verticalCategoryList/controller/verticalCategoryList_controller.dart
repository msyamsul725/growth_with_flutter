import 'package:get/get.dart';
import '../view/verticalCategoryList_view.dart';

class VerticalCategoryListController extends GetxController {
  VerticalCategoryListView? view;

  List categoryList = [
    "Food",
    "Drink",
    "Main Course",
    "Snack",
    "Ice Cream",
  ];
  String? selectedCategory;
}
