import 'package:flutter/material.dart';

import '../controller/elogin2_controller.dart';

class Elogin2View extends StatefulWidget {
  const Elogin2View({Key? key}) : super(key: key);

  Widget build(context, Elogin2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Elogin2"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }

  @override
  State<Elogin2View> createState() => Elogin2Controller();
}
