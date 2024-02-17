import 'package:flutter/material.dart';
import '../controller/categoryInWrap_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class CategoryInWrapView extends StatelessWidget {
  const CategoryInWrapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryInWrapController>(
      init: CategoryInWrapController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("CategoryInWrap"),
          ),
          body: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Wrap(
                    spacing: 10.0,
                    runSpacing: 10.0,
                    children: List.generate(
                      controller.categoryList.length,
                      (index) {
                        var item = controller.categoryList[index];
                        double size =
                            (MediaQuery.of(context).size.width - 40) / 2;
                        bool selected = item == controller.selectedCategory;
                        return SizedBox(
                          width: size,
                          height: size,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  selected ? Colors.purple : Colors.grey,
                            ),
                            onPressed: () {
                              controller.selectedCategory = item;
                              controller.update();
                            },
                            child: Text("$item"),
                          ),
                        );
                      },
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}
