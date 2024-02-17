import 'package:flutter/material.dart';
import '../controller/fadeAnimation_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class FadeAnimationView extends StatelessWidget {
  const FadeAnimationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FadeAnimationController>(
      init: FadeAnimationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("FadeAnimation"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ElevatedButton.icon(
                    icon: const Icon(Icons.add),
                    label: const Text("Set Visibility"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      controller.visible = controller.visible ? false : true;
                      controller.update();
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 2000),
                    opacity: controller.visible ? 1.0 : 0.0,
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 2000),
                    opacity: controller.visible ? 1.0 : 0.0,
                    child: const Icon(
                      Icons.developer_board,
                      size: 100.0,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 2000),
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(
                        controller.visible ? 1.0 : 0.0,
                      ),
                    ),
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
