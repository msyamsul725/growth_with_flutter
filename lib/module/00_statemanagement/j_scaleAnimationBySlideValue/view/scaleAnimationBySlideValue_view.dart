import 'package:flutter/material.dart';
import '../controller/scaleAnimationBySlideValue_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class ScaleAnimationBySlideValueView extends StatelessWidget {
  const ScaleAnimationBySlideValueView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ScaleAnimationBySlideValueController>(
      init: ScaleAnimationBySlideValueController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("ScaleAnimationBySlideValue"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    "${controller.slideValue}",
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Slider(
                    value: controller.slideValue,
                    onChanged: (value) {
                      controller.slideValue = value;
                      controller.update();
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  AnimatedScale(
                    duration: const Duration(milliseconds: 900),
                    scale: controller.slideValue,
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.red[200],
                        borderRadius: const BorderRadius.all(
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
                    duration: const Duration(milliseconds: 900),
                    opacity: controller.slideValue,
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Slider(
                    value: controller.slideValue,
                    onChanged: (value) {
                      controller.slideValue = value;
                      controller.update();
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 900),
                    height: 100.0,
                    width: controller.slideValue * 200,
                    decoration: BoxDecoration(
                      color: Colors.green[200],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 900),
                    width: 100.0,
                    height: controller.slideValue * 200,
                    decoration: const BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.all(
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
