import 'package:flutter/material.dart';
import '../../../../shared/widget/form/textfield.dart';
import '../controller/login_controller.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Login"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  //! 1. Ini adalah kode untuk membuat textfield email dengan reuseable widget
                  QTextField(
                    value: "demo@gmail.com",
                    label: "Email",
                    hint: "Your email",
                    onChanged: (value) {},
                  ),

                  //! 2. Buat kode yang sama, atur value-nya menjadi:
                  // value: 123456
                  // hint: Your password
                  // label: Password
                  // obscure: true

                  QTextField(
                    value: "123456",
                    label: "Password",
                    hint: "Your password",
                    obscure: true,
                    onChanged: (value) {},
                  ),

                  //! 3. Buat sebuah tombol,
                  //gunakan icon: Icons.login
                  //atur text-nya: Login
                  //ketika di klik, panggil:
                  // controller.doLogin()
                  //Jika dialog muncul ketika tombol di klik, tasks ini selesai

                  ElevatedButton.icon(
                    icon: const Icon(Icons.login),
                    label: const Text("Login"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () => controller.doLogin(),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
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
                  ElevatedButton.icon(
                    icon: const Icon(Icons.login),
                    label: const Text("Login"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () => controller.doLogin(),
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
