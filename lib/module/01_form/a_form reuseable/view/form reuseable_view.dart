import 'package:fhe_template/shared/widget/form/__form_example.dart';
import 'package:flutter/material.dart';
import '../controller/form reuseable_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class FormReuseableView extends StatelessWidget {
  const FormReuseableView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FormReuseableController>(
      init: FormReuseableController(),
      builder: (controller) {
        controller.view = this;

        return const FormExampleView();
      },
    );
  }
}
