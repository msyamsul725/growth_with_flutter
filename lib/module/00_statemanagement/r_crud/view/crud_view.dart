import 'dart:math';

import 'package:flutter/material.dart';
import '../controller/crud_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class CrudView extends StatelessWidget {
  const CrudView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CrudController>(
      init: CrudController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Crud"),
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              controller.products.add({
                "photo":
                    "https://i.ibb.co/dG68KJM/photo-1513104890138-7c749659a591-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                "product_name": "New Item XXX",
                "price": Random().nextInt(100),
                "category": "Food",
                "description":
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              });
              controller.update();
            },
          ),
          body: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) {
                      var item = controller.products[index];
                      return InkWell(
                        onTap: () {
                          // controller.products.remove(item);
                          controller.products.removeAt(index);
                          controller.update();
                        },
                        child: Card(
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.grey[200],
                              backgroundImage: NetworkImage(
                                item["photo"],
                              ),
                            ),
                            title: Text("${item["product_name"]}"),
                            subtitle: Text("${item["price"]}"),
                            trailing: IconButton(
                              onPressed: () {
                                item["price"] = Random().nextInt(1000);
                                controller.update();
                              },
                              icon: const Icon(
                                Icons.edit,
                                size: 24.0,
                              ),
                            ),
                          ),
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
