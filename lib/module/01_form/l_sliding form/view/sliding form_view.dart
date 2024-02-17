import 'package:flutter/material.dart';
import '../../../../shared/widget/form/datepicker.dart';
import '../../../../shared/widget/form/textarea.dart';
import '../controller/sliding form_controller.dart';
import 'package:get/get.dart';

class SlidingFormView extends StatelessWidget {
  const SlidingFormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SlidingFormController>(
      init: SlidingFormController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("SlidingForm"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 900),
                    width: controller.submitted
                        ? 160
                        : MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[900],
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const Text(
                            "Apply Leave",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          QDatePicker(
                              label: "Leave Data", onChanged: (value) {}),
                          //! 1. buat datepicker, atur label-nya menjadi
                          //? "Leave Date"
                          QMemoField(label: "Reason", onChanged: (value) {}),
                          //! 2. Buat textarea, atur label-nya menjadi
                          //? "Reason"
                          const Divider(),
                          //! 3. Tambahkan Divider
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueGrey,
                              ),
                              onPressed: () {
                                controller.submitted = !controller.submitted;
                                controller.update();
                              },
                              child: const Text("Save"),
                            ),
                          ),
                          //! 4. Buat sebuah tombol:
                          //? width: MediaQuery.of(context).size.width,
                          //? height: 40

                          //! 5. Ketika di klik, tambahkan kode ini:
                          /*
                        controller.submitted = !controller.submitted;
                        controller.update();
                      */

                          //! 6. Jika Container mengecil ketika tombol di klik
                          //? maka task ini selesai!
                        ],
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
