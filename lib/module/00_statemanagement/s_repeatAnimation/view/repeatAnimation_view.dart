import 'package:flutter/material.dart';
import '../controller/repeatAnimation_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class RepeatAnimationView extends StatelessWidget {
  const RepeatAnimationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RepeatAnimationController>(
      init: RepeatAnimationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("RepeatAnimation"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 900),
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
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 900),
                    height: 100.0,
                    width: 100.0,
                    margin: EdgeInsets.only(
                      left: controller.visible ? 200 : 0.0,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  // AnimatedRotation(
                  //   duration: const Duration(milliseconds: 900),
                  //   turns: controller.visible ? 10 : 0 / 360,
                  //   child: Container(
                  //     height: 100.0,
                  //     width: 100.0,
                  //     margin: EdgeInsets.only(
                  //       left: controller.visible ? 200 : 0.0,
                  //     ),
                  //     decoration: const BoxDecoration(
                  //       color: Colors.red,
                  //       borderRadius: BorderRadius.all(
                  //         Radius.circular(
                  //           16.0,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 900),
                    height: controller.visible ? 200 : 100.0,
                    width: controller.visible ? 200 : 100.0,
                    margin: const EdgeInsets.only(
                      left: 100,
                    ),
                    decoration: BoxDecoration(
                      color: controller.visible ? Colors.blue : Colors.green,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
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
