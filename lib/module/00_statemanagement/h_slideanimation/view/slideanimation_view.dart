import 'package:flutter/material.dart';
import '../controller/slideanimation_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class SlideanimationView extends StatelessWidget {
  const SlideanimationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SlideanimationController>(
      init: SlideanimationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Slideanimation"),
          ),
          body: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 900),
                top: 100,
                right: controller.visible ? 0 : -200,
                child: InkWell(
                  onTap: () {
                    controller.visible = controller.visible ? false : true;
                    controller.update();
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.chevron_left),
                      const Icon(Icons.card_giftcard),
                      Container(
                        width: 200,
                        height: 200.0,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 900),
                top: 300,
                left: controller.visible ? 0 : -200,
                child: InkWell(
                  onTap: () {
                    controller.visible = controller.visible ? false : true;
                    controller.update();
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 200,
                        height: 200.0,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                        ),
                      ),
                      const Icon(Icons.card_giftcard),
                      const Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 900),
                top: controller.visible ? 0 : -200,
                left: 0,
                child: InkWell(
                  onTap: () {
                    controller.visible = controller.visible ? false : true;
                    controller.update();
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 200.0,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                        ),
                      ),
                      const Icon(Icons.card_giftcard),
                      const Icon(Icons.arrow_downward),
                    ],
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 900),
                bottom: controller.visible ? 0 : -200,
                right: 0,
                child: InkWell(
                  onTap: () {
                    controller.visible = controller.visible ? false : true;
                    controller.update();
                  },
                  child: Column(
                    children: [
                      const Icon(Icons.arrow_upward),
                      const Icon(Icons.card_giftcard),
                      Container(
                        width: 200,
                        height: 200.0,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
