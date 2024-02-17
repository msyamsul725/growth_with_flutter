import 'package:flutter/material.dart';
import '../controller/scrollGetx_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class ScrollGetxView extends StatelessWidget {
  const ScrollGetxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ScrollGetxController>(
      init: ScrollGetxController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("ScrollGetx"),
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
