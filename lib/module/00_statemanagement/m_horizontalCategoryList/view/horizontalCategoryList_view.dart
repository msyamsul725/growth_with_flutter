import 'package:flutter/material.dart';
import '../controller/horizontalCategoryList_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class HorizontalCategoryListView extends StatelessWidget {
  const HorizontalCategoryListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HorizontalCategoryListController>(
      init: HorizontalCategoryListController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("HorizontalCategoryList"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 40.0,
                    child: ListView.builder(
                      itemCount: controller.categoryList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var item = controller.categoryList[index];
                        bool isSelected = item == controller.selectedCategory;

                        return Container(
                          margin: const EdgeInsets.only(
                            right: 10.0,
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(64.0),
                              ),
                              backgroundColor:
                                  isSelected ? Colors.orange : Colors.grey,
                            ),
                            onPressed: () {
                              controller.selectedCategory = item;
                              controller.update();
                            },
                            child: Text("$item"),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
