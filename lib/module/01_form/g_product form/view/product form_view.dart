import 'package:flutter/material.dart';
import '../../../../shared/util/validator/validator.dart';
import '../../../../shared/widget/form/dropdown.dart';
import '../../../../shared/widget/form/numberfield.dart';
import '../../../../shared/widget/form/radio.dart';
import '../../../../shared/widget/form/textarea.dart';
import '../../../../shared/widget/form/textfield.dart';
import '../controller/product form_controller.dart';
import 'package:get/get.dart';

class ProductFormView extends StatelessWidget {
  const ProductFormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductFormController>(
      init: ProductFormController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("ProductForm"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          QTextField(
                            label: "Product Name",
                            onChanged: (value) {},
                          ),
                          QNumberField(
                            label: "Price",
                            hint: "Your Price's",
                            validator: Validator.required,
                            value: "24",
                            onChanged: (value) {
                              print("Price: $value");
                            },
                          ),
                          QMemoField(
                              label: "Description", onChanged: (value) {}),
                          QDropdownField(
                            label: "Category",
                            hint: "Your product category",
                            validator: Validator.required,
                            items: const [
                              {
                                "label": "Food",
                                "value": 1,
                              },
                              {
                                "label": "Drink",
                                "value": 2,
                              },
                              {
                                "label": "Main Course",
                                "value": 3,
                              }
                            ],
                            onChanged: (value, label) {},
                          ),
                          QRadioField(
                            label: "Status",
                            validator: Validator.atLeastOneitem,
                            items: const [
                              {
                                "label": "Published",
                                "value": "published",
                              },
                              {
                                "label": "Draft",
                                "value": "draft",
                              }
                            ],
                            onChanged: (value, label) {},
                          ),
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
