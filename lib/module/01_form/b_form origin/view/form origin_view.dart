import 'package:flutter/material.dart';
import '../../../../shared/widget/form/__form_example_non_reuseable.dart';
import '../controller/form origin_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class FormOriginView extends StatelessWidget {
  const FormOriginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FormOriginController>(
      init: FormOriginController(),
      builder: (controller) {
        controller.view = this;

        return const FormExampleNonReuseableView();
      },
    );
  }
}
