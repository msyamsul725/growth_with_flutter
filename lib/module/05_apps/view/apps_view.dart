import 'package:flutter/material.dart';
import '../controller/apps_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class AppsView extends StatelessWidget {
  const AppsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppsController>(
      init: AppsController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Apps"),
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
