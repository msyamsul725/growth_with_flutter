import 'package:flutter/material.dart';

import '../controller/digitalclock_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class DigitalclockView extends StatelessWidget {
  const DigitalclockView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DigitalclockController>(
      init: DigitalclockController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Digitalclock"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.red[200],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 7,
                              color: Colors.black.withOpacity(0.07),
                              offset: const Offset(4, 4),
                            ),
                            BoxShadow(
                              blurRadius: 13,
                              color: Colors.white.withOpacity(1),
                              offset: const Offset(-4, -4),
                            ),
                            BoxShadow(
                              blurRadius: 36,
                              color: Colors.black.withOpacity(0.06),
                              offset: const Offset(6, 6),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              controller.time(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            // Center(
                            //   child: CircularPercentIndicator(
                            //     radius: 60.0,
                            //     lineWidth: 8.0,
                            //     percent: controller.indicatorValue!,
                            //     circularStrokeCap: CircularStrokeCap.round,
                            //     progressColor: Colors.white,
                            //     backgroundColor: Colors.black,
                            //   ),
                            // )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.red[200],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Container(
                        child: Text(
                          controller.formattedCurrentDate,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.red[200],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          controller.kkmmss,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
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
