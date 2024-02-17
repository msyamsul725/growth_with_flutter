import 'package:flutter/material.dart';
import '../controller/product CRUD_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class ProductCRUDView extends StatelessWidget {
  const ProductCRUDView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductCRUDController>(
      init: ProductCRUDController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("ProductCRUD"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: const [],
              ),
            ),
          ),
        );
      },
    );
  }
}
