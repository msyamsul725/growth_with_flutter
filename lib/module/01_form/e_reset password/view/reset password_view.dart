import 'package:flutter/material.dart';
import '../../../../shared/util/validator/validator.dart';
import '../../../../shared/widget/form/textfield.dart';
import '../controller/reset password_controller.dart';
import 'package:get/get.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResetPasswordController>(
      init: ResetPasswordController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("ResetPassword"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Card(
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          QTextField(
                            label: "Email",
                            hint: "Your email",
                            validator: Validator.email,
                            value: "demo@gmail.com",
                            onChanged: (value) {},
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          ElevatedButton.icon(
                            icon: const Icon(Icons.send),
                            label: const Text("Reset password"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueGrey,
                            ),
                            onPressed: () {},
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
