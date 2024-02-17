import 'package:flutter/material.dart';
import '../controller/Map Marker_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class MapMarkerView extends StatelessWidget {
  const MapMarkerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MapMarkerController>(
      init: MapMarkerController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("MapMarker"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: const [],
              ),
            ),
          ),
        );
      },
    );
  }
}
