import 'package:get/get.dart';
import '../view/horizontalCategoryList_view.dart';

class HorizontalCategoryListController extends GetxController {
  HorizontalCategoryListView? view;

  List categoryList = [
    "food",
    "Drink",
    "Main Course",
    "Snack",
    "Ice Cream",
  ];
  String? selectedCategory;
}
