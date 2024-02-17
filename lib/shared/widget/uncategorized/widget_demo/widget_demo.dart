import 'package:fhe_template/shared/util/validator/validator.dart';
import 'package:fhe_template/shared/widget/category_picker/category_picker.dart';
import 'package:fhe_template/shared/widget/form/autocomplete.dart';
import 'package:fhe_template/shared/widget/form/check.dart';
import 'package:fhe_template/shared/widget/form/datepicker.dart';
import 'package:fhe_template/shared/widget/form/dropdown.dart';
import 'package:fhe_template/shared/widget/form/image_picker.dart';
import 'package:fhe_template/shared/widget/form/numberfield.dart';
import 'package:fhe_template/shared/widget/form/radio.dart';
import 'package:fhe_template/shared/widget/form/switch.dart';
import 'package:fhe_template/shared/widget/form/textarea.dart';
import 'package:fhe_template/shared/widget/form/textfield.dart';
import 'package:fhe_template/shared/widget/form/timepicker.dart';
import 'package:fhe_template/shared/widget/location_picker/location_picker%20copy.dart';
import 'package:fhe_template/shared/widget/rating/rating_field.dart';
import 'package:flutter/material.dart';

class HUIWidgetDemoView extends StatefulWidget {
  const HUIWidgetDemoView({Key? key}) : super(key: key);

  @override
  State<HUIWidgetDemoView> createState() => _HUIWidgetDemoViewState();
}

class _HUIWidgetDemoViewState extends State<HUIWidgetDemoView> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  int? counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Demo"),
        actions: [
          Container(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              onPressed: () {
                bool isValid = formKey.currentState!.validate();
                if (isValid) {
                  return;
                }
              },
              child: const Text("Check"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                QImagePicker(
                  label: "Photo",
                  validator: Validator.required,
                  value: null,
                  onChanged: (value) {},
                ),
                QTextField(
                  label: "Name",
                  hint: "Name",
                  validator: Validator.required,
                  value: "John Doe",
                  onChanged: (value) {},
                ),
                QNumberField(
                  label: "Age",
                  validator: Validator.required,
                  value: counter?.toString(),
                  onChanged: (value) {},
                ),
                QDropdownField(
                  label: "Roles",
                  validator: Validator.required,
                  items: const [
                    {
                      "label": "Admin",
                      "value": 1,
                    },
                    {
                      "label": "Staff",
                      "value": 2,
                    }
                  ],
                  onChanged: (value, label) {},
                ),
                QCategoryPicker(
                  label: "Category",
                  items: const [
                    {
                      "label": "Main Course",
                      "value": "Main Course",
                    },
                    {
                      "label": "Drink",
                      "value": "Drink",
                    },
                    {
                      "label": "Snack",
                      "value": "Snack",
                    },
                    {
                      "label": "Dessert",
                      "value": "Dessert",
                    }
                  ],
                  validator: Validator.required,
                  onChanged: (index, label, value, item) {},
                ),
                QRatingField(
                  label: "Rating",
                  validator: Validator.required,
                  onChanged: (value) {},
                ),
                QLocationPicker(
                  id: "location",
                  label: "Location",
                  latitude: -6.218481065235333,
                  longitude: 106.80254435779423,
                  onChanged: (latitude, longitude) {},
                ),
                QAutoComplete(
                  label: "Favorite employee",
                  hint: "Your favorite Employee",
                  validator: Validator.required,
                  items: const [
                    {
                      "label": "Jackie Roo",
                      "value": "101",
                      "info": "Hacker",
                    },
                    {
                      "label": "Dan Milton",
                      "value": "102",
                      "info": "UI/UX Designer",
                    },
                    {
                      "label": "Ryper Roo",
                      "value": "103",
                      "info": "Android Developer",
                    }
                  ],
                  onChanged: (value, label) {},
                ),
                QTextField(
                  label: "Name",
                  hint: "Name",
                  validator: Validator.required,
                  onChanged: (value) {},
                ),
                QNumberField(
                  label: "Age",
                  hint: "Your age's",
                  validator: Validator.required,
                  onChanged: (value) {},
                ),
                QDatePicker(
                  label: "Birth date",
                  hint: "Your birth date",
                  validator: Validator.required,
                  onChanged: (value) {
                    print("value: $value");
                  },
                ),
                QTimePicker(
                  label: "Working hour",
                  hint: "Your working hour",
                  validator: Validator.required,
                  onChanged: (value) {
                    print("value: $value");
                  },
                ),
                QMemoField(
                  label: "Address",
                  hint: "Your addresses",
                  validator: Validator.required,
                  value: "Kamboja street 16, Bogor, West Java, Indonesia",
                  onChanged: (value) {},
                ),
                QCheckField(
                  label: "Club",
                  validator: Validator.atLeastOneitem,
                  items: const [
                    {
                      "label": "Persib",
                      "value": 101,
                      "checked": false,
                    },
                    {
                      "label": "Persikabo",
                      "value": 102,
                      "checked": false,
                    }
                  ],
                  onChanged: (values, ids) {},
                ),
                QRadioField(
                  label: "Gender",
                  hint: "Gender",
                  validator: Validator.atLeastOneitem,
                  items: const [
                    {
                      "label": "Female",
                      "value": 1,
                    },
                    {
                      "label": "Male",
                      "value": 2,
                    }
                  ],
                  onChanged: (value, label) {},
                ),
                QSwitch(
                  label: "Member",
                  validator: Validator.atLeastOneitem,
                  items: const [
                    {
                      "label": "Private",
                      "value": 1,
                    },
                    {
                      "label": "Premium",
                      "value": 2,
                    }
                  ],
                  onChanged: (values, ids) {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
