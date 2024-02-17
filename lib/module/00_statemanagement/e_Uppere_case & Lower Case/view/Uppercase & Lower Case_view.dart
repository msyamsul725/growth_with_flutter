import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../controller/Uppercase & Lower Case_controller.dart';
import 'package:fhe_template/core.dart';

class UppercaseLowerCaseView extends StatelessWidget {
  const UppercaseLowerCaseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UppercaseLowerCaseController>(
      init: UppercaseLowerCaseController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("UppercaseLowerCase"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 100.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.red[200],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                    child: Obx(() {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Nama saya : ${controller.human.value.name}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0,
                            color: Colors.white,
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 260.0,
                    height: 100.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () {
                            controller.changUpperCase();
                          },
                          child: const Text("toUpperCase"),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () {
                            controller.changeLowerCase();
                          },
                          child: const Text("toLowerCase"),
                        ),
                      ],
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
