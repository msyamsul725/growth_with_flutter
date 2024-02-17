import 'package:fhe_template/module/00_statemanagement/w_notificationsLocal/widget/local_notification.dart';
import 'package:flutter/material.dart';
import '../controller/notificationsLocal_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class NotificationsLocalView extends StatelessWidget {
  const NotificationsLocalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotificationsLocalController>(
      init: NotificationsLocalController(),
      builder: (controller) {
        controller.view = this;

        return const LocalPushNotification();
      },
    );
  }
}
