// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:fhe_template/main.dart';
import 'package:fhe_template/module/00_statemanagement/w_notificationsLocal/widget/notifications.dart';
import 'package:flutter/material.dart';

class LocalPushNotification extends StatefulWidget {
  const LocalPushNotification({Key? key}) : super(key: key);

  @override
  State<LocalPushNotification> createState() => _LocalPushNotificationState();
}

class _LocalPushNotificationState extends State<LocalPushNotification> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Noti.initialize(flutterLocalNotificationsPlugin);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 100.0,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () {
                    // Noti.showBigTextNotification(
                    //     title: "Alarm Absensi",
                    //     body: "Segera Melakukan Absensi",
                    //     fln: flutterLocalNotificationsPlugin);
                  },
                  child: const Text("push"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
