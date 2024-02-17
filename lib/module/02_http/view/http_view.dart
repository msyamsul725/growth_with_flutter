import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class HttpView extends StatelessWidget {
  const HttpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HttpController>(
      init: HttpController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Http"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: List.generate(
                          controller.https.length,
                          (index) {
                            var item = controller.https[index];
                            var size =
                                (constraints.biggest.width - (10 * 3)) / 4;
                            return TutorialNavigationItem(
                              item: item,
                              size: size,
                              index: index,
                              color: Colors.green,
                            );
                          },
                        ),
                      );

                      //mobile
                    },
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
