import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view/product form_view.dart';

class ProductFormController extends GetxController {
  ProductFormView? view;

  save() async {
    await showDialog<void>(
      context: Get.context!,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Info'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Your product is updated!'),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Ok"),
            ),
          ],
        );
      },
    );
  }
}
