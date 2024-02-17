import 'package:flutter/material.dart';
import '../controller/animationbyMouseEvent_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class AnimationbyMouseEventView extends StatelessWidget {
  const AnimationbyMouseEventView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimationbyMouseEventController>(
      init: AnimationbyMouseEventController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("AnimationbyMouseEvent"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    icon: const Icon(Icons.animation),
                    label: const Text("Animate"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      controller.enabled = controller.enabled ? false : true;
                      controller.update();
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  MouseRegion(
                    onEnter: (e) {},
                    onExit: (e) {
                      controller.enabled = false;
                      controller.update();
                    },
                    onHover: (e) {
                      controller.enabled = true;
                      controller.update();
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 600),
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: controller.enabled ? Colors.blue : Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(controller.enabled ? 100 : 12.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 600),
                    height: 100.0,
                    width: 100.0,
                    margin: EdgeInsets.only(
                      left: controller.enabled ? 200 : 0.0,
                    ),
                    decoration: BoxDecoration(
                      color: controller.enabled ? Colors.blue : Colors.red,
                      borderRadius: BorderRadius.all(
                        Radius.circular(controller.enabled ? 100 : 12.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 200.0,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                    child: Stack(
                      children: [
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 3000),
                          left: controller.enabled ? 200 : 0,
                          top: controller.enabled ? 200 : 0,
                          child: const Icon(Icons.person),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 600),
                    height: controller.enabled ? 300 : 200.0,
                    width: controller.enabled ? 300 : 200.0,
                    decoration: BoxDecoration(
                      color: controller.enabled ? Colors.blue : Colors.red,
                      borderRadius: BorderRadius.all(
                        Radius.circular(controller.enabled ? 100 : 12.0),
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
