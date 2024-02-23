import 'package:fhe_template/module/00_statemanagement/controller/home_controller.dart';
import 'package:fhe_template/module/00_statemanagement/widget/expension_tile.dart';
import 'package:fhe_template/module/01_form/controller/form_controller.dart';
import 'package:fhe_template/module/02_http/controller/http_controller.dart';
import 'package:fhe_template/module/03_ui_dashboard/controller/ui_dashboard_controller.dart';
import 'package:fhe_template/module/04_widget/controller/widget_controller.dart';
import 'package:fhe_template/module/05_apps/controller/apps_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../controller/dashboard_controller.dart';

import 'package:get/get.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stateManagement = Get.put(HomeController());
    final form = Get.put(FormController());
    final http = Get.put(HttpController());
    final uiDash = Get.put(UiDashboardController());
    final widgetUi = Get.put(WidgetController());
    final apps = Get.put(AppsController());
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                  gradient: RadialGradient(colors: [
                Color.fromRGBO(33, 137, 156, 0.15),
                Colors.white,
              ], center: Alignment.topRight, radius: 0.7)),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40.0,
                  ),
                  Image.asset(
                    "assets/images/app_icon/flutter.png",
                    width: 100.0,
                    fit: BoxFit.fill,
                  )
                      .animate(
                        onPlay: (controller) => controller.repeat(),
                      )
                      .shimmer(
                        duration: 3000.ms,
                      ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Growth With Flutter",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    )
                        .animate(
                          onPlay: (controller) => controller.repeat(),
                        )
                        .shimmer(
                          duration: 3000.ms,
                        ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    children: [
                      EQMod(title: 'Widget', listData: widgetUi.widgetUi),
                      const SizedBox(
                        height: 10.0,
                      ),
                      EQMod(
                          title: 'State',
                          listData: stateManagement.stateManagementList),
                      const SizedBox(
                        height: 10.0,
                      ),
                      EQMod(title: 'Form', listData: form.formList),
                      const SizedBox(
                        height: 10.0,
                      ),
                      EQMod(title: 'Http', listData: http.https),
                      const SizedBox(
                        height: 10.0,
                      ),
                      EQMod(title: 'UI Dashboard', listData: uiDash.items),
                      const SizedBox(
                        height: 10.0,
                      ),
                      EQMod(title: 'Apps', listData: apps.apps),
                    ],
                  )
                      .animate(
                        onPlay: (controller) => controller.repeat(),
                      )
                      .shimmer(
                        duration: 3000.ms,
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
