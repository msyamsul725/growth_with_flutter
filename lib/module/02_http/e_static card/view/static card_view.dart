import 'package:flutter/material.dart';
import '../controller/static card_controller.dart';
import 'package:get/get.dart';

class StaticCardView extends StatelessWidget {
  const StaticCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StaticCardController>(
      init: StaticCardController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("StaticCard"),
            actions: [
              IconButton(
                onPressed: () => controller.refresh(),
                icon: const Icon(
                  Icons.refresh,
                  size: 24.0,
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Product",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 6.0,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "${controller.productCount}",
                                            style: const TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Text(
                                            "+25%",
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        8.0,
                                      ),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.people,
                                    size: 24.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
