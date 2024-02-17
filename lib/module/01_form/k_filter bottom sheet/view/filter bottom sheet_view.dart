import 'package:flutter/material.dart';
import '../../../../shared/widget/form/datepicker.dart';
import '../controller/filter bottom sheet_controller.dart';
import 'package:get/get.dart';

class FilterBottomSheetView extends StatelessWidget {
  const FilterBottomSheetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FilterBottomSheetController>(
      init: FilterBottomSheetController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("FilterBottomSheet"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ElevatedButton.icon(
                    icon: const Icon(Icons.tune),
                    label: const Text("Filter"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () async {
                      await showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            padding: const EdgeInsets.all(20.0),
                            child: Wrap(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      //! 1. Buat datepicker:
                                      //? datepicker: "From"
                                      //? datepicker: "To"
                                      //! 2. Buat tombol dengan label "FILTER"
                                      //! 3. Ketika di klik, panggil Navigator.pop(context)
                                      QDatePicker(
                                          label: 'From', onChanged: (value) {}),
                                      QDatePicker(
                                          label: 'To', onChanged: (value) {}),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blueGrey,
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                          controller.update();
                                        },
                                        child: const Text("Filter"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
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
