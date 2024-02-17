import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../controller/allanimation_controller.dart';
import 'package:fhe_template/core.dart';

class AllanimationView extends StatelessWidget {
  const AllanimationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AllanimationController>(
      init: AllanimationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Allanimation"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Obx(() {
                    return ElevatedButton.icon(
                      icon: const Icon(Icons.animation),
                      label: controller.enabled.value
                          ? const Text("Animate")
                          : const Text("Run.."),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: controller.enabled.value
                            ? Colors.blueGrey
                            : Colors.black,
                      ),
                      onPressed: () {
                        controller.enabled.value =
                            controller.enabled.value ? false : true;
                      },
                    );
                  }),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Obx(() {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 600),
                      height: 100.0,
                      width: 100.0,
                      margin: EdgeInsets.only(
                        left: controller.enabled.value ? 200 : 0.0,
                      ),
                      decoration: BoxDecoration(
                        color:
                            controller.enabled.value ? Colors.blue : Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                              controller.enabled.value ? 100 : 12.0),
                        ),
                      ),
                    );
                  }),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Obx(() {
                    return Container(
                      height: 200.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.blue,
                      child: Stack(
                        children: [
                          AnimatedPositioned(
                            duration: const Duration(milliseconds: 3000),
                            left: controller.enabled.value ? 200 : 0,
                            top: controller.enabled.value ? 200 : 0,
                            child: const Icon(Icons.person),
                          ),
                        ],
                      ),
                    );
                  }),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Obx(() {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 600),
                      height: controller.enabled.value ? 300 : 200.0,
                      width: controller.enabled.value ? 300 : 200.0,
                      decoration: BoxDecoration(
                        color:
                            controller.enabled.value ? Colors.blue : Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                              controller.enabled.value ? 100 : 12.0),
                        ),
                      ),
                    );
                  }),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
