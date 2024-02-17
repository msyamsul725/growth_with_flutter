import 'package:flutter/material.dart';
import '../controller/login http_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class LoginHttpView extends StatelessWidget {
  const LoginHttpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginHttpController>(
      init: LoginHttpController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("LoginHttp"),
          ),
          body: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Image.network(
                  "https://icons.iconarchive.com/icons/graphics-vibe/neon-glow-social/128/youtube-icon.png",
                  width: 128.0,
                  height: 128.0,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                QTextField(
                  label: "Email",
                  hint: "Your email",
                  validator: Validator.email,
                  value: controller.email,
                  onChanged: (value) {
                    controller.email = value;
                  },
                ),
                QTextField(
                  label: "Password",
                  hint: "Your password",
                  obscure: true,
                  validator: Validator.required,
                  value: controller.password,
                  onChanged: (value) {
                    controller.password = value;
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 48.0,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.login),
                    label: const Text("Login"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () => controller.doLogin(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
