import 'package:flutter/material.dart';
import '../controller/scaleAnimation_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class ScaleAnimationView extends StatelessWidget {
  const ScaleAnimationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ScaleAnimationController>(
      init: ScaleAnimationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("ScaleAnimation"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      controller.scaleIn = controller.scaleIn ? false : true;
                      controller.update();
                    },
                    child: const Text("Scale In"),
                  ),
                  const SizedBox(
                    height: 29.0,
                  ),
                  Container(
                    color: Colors.red[100],
                    width: MediaQuery.of(context).size.width,
                    height: 200.0,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          bottom: 0,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 900),
                            height: controller.scaleIn ? 10.0 : 200,
                            width: controller.scaleIn ? 10.0 : 200,
                            decoration: const BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  16.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "scaleOut: ${controller.scaleOut}",
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "scaleIn: ${controller.scaleIn}",
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      controller.scaleOut = controller.scaleOut ? false : true;
                      controller.update();
                    },
                    child: const Text("Scale Out"),
                  ),
                  const SizedBox(
                    height: 29.0,
                  ),
                  AnimatedScale(
                    duration: const Duration(milliseconds: 1900),
                    scale: controller.scaleOut ? 1.5 : 1.0,
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: const BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 29.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      controller.scaleIn = controller.scaleIn ? false : true;
                      controller.update();
                    },
                    child: const Text("Scale In"),
                  ),
                  const SizedBox(
                    height: 29.0,
                  ),
                  AnimatedScale(
                    duration: const Duration(milliseconds: 1900),
                    scale: controller.scaleIn ? 0.5 : 1.0,
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: const BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 29.0,
                  ),
                  AnimatedScale(
                    duration: const Duration(milliseconds: 400),
                    scale: controller.scaleIn ? 0.5 : 1.0,
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      controller.scaleIn = controller.scaleIn ? false : true;
                      controller.update();
                    },
                    child: const Text("Scale In"),
                  ),
                  const SizedBox(
                    height: 29.0,
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 1900),
                    height: 100.0,
                    width: controller.scaleIn
                        ? 10.0
                        : MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 29.0,
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 900),
                    height: controller.scaleIn ? 10.0 : 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                  ),
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
