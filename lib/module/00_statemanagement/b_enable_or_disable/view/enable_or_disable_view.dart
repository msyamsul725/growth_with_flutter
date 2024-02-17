import 'package:flutter/material.dart';
import '../controller/enable_or_disable_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class EnableOrDisableView extends StatelessWidget {
  const EnableOrDisableView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EnableOrDisableController>(
      init: EnableOrDisableController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("EnableOrDisable"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(),
                    child: TextFormField(
                      initialValue: '',
                      maxLength: 20,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        suffixIcon: Icon(
                          Icons.email,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        helperText: 'Enter your email address',
                      ),
                      onChanged: (value) {
                        controller.email.value = value;
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(),
                    child: TextFormField(
                      initialValue: '',
                      maxLength: 20,
                      obscureText: !controller.passwordVisivle,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                            controller.passwordVisivle =
                                !controller.passwordVisivle;
                            controller.update();
                          },
                          child: Icon(
                            controller.passwordVisivle
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        helperText: 'Enter your password',
                      ),
                      onChanged: (value) {
                        controller.password.value = value;
                      },
                    ),
                  ),
                  Obx(
                    () => ElevatedButton.icon(
                      icon: const Icon(Icons.login),
                      label: const Text("Login"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: controller.loginButtonEnabled == false
                            ? Colors.grey
                            : Colors.blueGrey,
                      ),
                      onPressed: () {
                        if (controller.loginButtonEnabled) return;
                        print("Hello World");
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
