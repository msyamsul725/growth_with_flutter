import 'package:flutter/material.dart';
import '../controller/widget_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class WidgetView extends StatelessWidget {
  const WidgetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WidgetController>(
      init: WidgetController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Widget"),
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
