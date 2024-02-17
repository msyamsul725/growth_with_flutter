import 'package:flutter/material.dart';
import '../controller/verticalCategoryList_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class VerticalCategoryListView extends StatelessWidget {
  const VerticalCategoryListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VerticalCategoryListController>(
      init: VerticalCategoryListController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("VerticalCategoryList"),
          ),
          body: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: controller.categoryList.length,
                    itemBuilder: (context, index) {
                      var item = controller.categoryList[index];
                      bool selected = controller.selectedCategory == item;
                      return Container(
                        height: 60.0,
                        margin: const EdgeInsets.only(
                          bottom: 10.0,
                        ),
                        child: ElevatedButton.icon(
                          icon: Icon(
                            Icons.check,
                            size: selected ? 20 : 0,
                          ),
                          label: Text("$item"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                selected ? Colors.green : Colors.grey,
                          ),
                          onPressed: () {
                            controller.selectedCategory = item;
                            controller.update();
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
