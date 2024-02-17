import 'package:fhe_template/module/00_statemanagement/controller/home_controller.dart';
import 'package:fhe_template/module/00_statemanagement/widget/expension_tile.dart';
import 'package:fhe_template/module/01_form/controller/form_controller.dart';
import 'package:fhe_template/module/02_http/controller/http_controller.dart';
import 'package:fhe_template/module/03_ui_dashboard/controller/ui_dashboard_controller.dart';
import 'package:fhe_template/module/04_widget/controller/widget_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = Get.put(FormController());
    final http = Get.put(HttpController());
    final uiDash = Get.put(UiDashboardController());
    final widgetUi = Get.put(WidgetController());
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("Growth with Flutter")),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  EQMod(title: 'Widget', listData: widgetUi.widgetUi),
                  const SizedBox(
                    height: 10.0,
                  ),
                  EQMod(
                      title: 'State', listData: controller.stateManagementList),
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
                  EQMod(title: 'Apps', listData: uiDash.items),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
