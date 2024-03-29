import 'package:flutter/material.dart';

import '../controller/eedit_profile1_controller.dart';

class EeditProfile1View extends StatefulWidget {
  const EeditProfile1View({Key? key}) : super(key: key);

  Widget build(context, EeditProfile1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EeditProfile1"),
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
  State<EeditProfile1View> createState() => EeditProfile1Controller();
}
