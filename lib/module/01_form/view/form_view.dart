import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class FormView extends StatelessWidget {
  const FormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FormController>(
      init: FormController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Form"),
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
                          controller.formList.length,
                          (index) {
                            var item = controller.formList[index];
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
