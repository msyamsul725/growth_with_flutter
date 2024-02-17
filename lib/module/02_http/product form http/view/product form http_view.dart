import 'package:flutter/material.dart';
import '../controller/product form http_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class ProductFormHttpView extends StatelessWidget {
  const ProductFormHttpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductFormHttpController>(
      init: ProductFormHttpController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("ProductFormHttp"),
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
