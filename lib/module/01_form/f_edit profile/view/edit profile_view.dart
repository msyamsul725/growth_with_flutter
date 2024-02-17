import 'package:flutter/material.dart';
import '../../../../shared/widget/form/textfield.dart';
import '../controller/edit profile_controller.dart';
import 'package:get/get.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditProfileController>(
      init: EditProfileController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("EditProfile"),
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
                            value: "syamsul@gmail.com",
                            label: "Email",
                            hint: "Your email",
                            onChanged: (value) {},
                          ),
                          const SizedBox(
                            height: 29.0,
                          ),
                          QTextField(
                            value: "123456",
                            label: "Password",
                            hint: "Your password",
                            obscure: true,
                            onChanged: (value) {},
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ElevatedButton.icon(
                              icon: const Icon(Icons.login),
                              label: const Text("Save"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueGrey,
                              ),
                              onPressed: () => controller.save(),
                            ),
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
