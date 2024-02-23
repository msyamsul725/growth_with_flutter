import 'package:flutter/material.dart';

import '../controller/efw400_grid_controller.dart';

class Efw400GridView extends StatefulWidget {
  const Efw400GridView({Key? key}) : super(key: key);

  Widget build(context, Efw400GridController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Efw400Grid"),
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
  State<Efw400GridView> createState() => Efw400GridController();
}
