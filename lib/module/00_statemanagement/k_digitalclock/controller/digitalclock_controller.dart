import 'dart:async';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../view/digitalclock_view.dart';

class DigitalclockController extends GetxController {
  DigitalclockView? view;

  // Timer? timer;
  DateTime? currentDate;
  DateTime eventDate = DateTime(2022, 12, 20);

  String get formattedCurrentDate {
    if (currentDate == null) return "_";
    return DateFormat("d MMM y kk:mm:ss").format(currentDate!);
  }

  String get kkmmss {
    if (currentDate == null) return "_";
    return DateFormat("kk:mm:ss").format(currentDate!);
  }

  String get eventDateInHour {
    if (currentDate == null) return "-";
    var diff = eventDate.difference(currentDate!).inHours;
    return "$diff Hours before $eventDate";
  }

  String get eventDateInSecond {
    if (currentDate == null) return "-";
    var diff = eventDate.difference(currentDate!).inSeconds;
    return "$diff Seconds before $eventDate";
  }

  // void initState() {
  //   timer = Timer.periodic(const Duration(microseconds: 100), (timer) {
  //     currentDate = DateTime.now();
  //     update();
  //   });
  // }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  double? indicatorValue;
  Timer? timer;

  String time() {
    return "${DateTime.now().hour < 10 ? "0${DateTime.now().hour}" : DateTime.now().hour} : ${DateTime.now().minute < 10 ? "0${DateTime.now().minute}" : DateTime.now().minute} : ${DateTime.now().second < 10 ? "0${DateTime.now().second}" : DateTime.now().second} ";
  }

  updateSeconds() {
    timer = Timer.periodic(
        const Duration(seconds: 1),
        (Timer timer) => (() {
              indicatorValue = DateTime.now().second / 60;
            }));
    update();
  }

  @override
  void onInit() {
    super.onInit();
    timer = Timer.periodic(const Duration(microseconds: 100), (timer) {
      currentDate = DateTime.now();
      update();
    });
    indicatorValue = DateTime.now().second / 60;
    updateSeconds();
    update();
  }
}
