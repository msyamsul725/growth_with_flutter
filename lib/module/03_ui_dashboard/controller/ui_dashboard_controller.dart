import 'package:fhe_template/module/03_ui_dashboard/pages/uk_dashboard1/view/uk_dashboard1_view.dart';
import 'package:fhe_template/module/03_ui_dashboard/pages/uk_dashboard10/view/uk_dashboard10_view.dart';
import 'package:fhe_template/module/03_ui_dashboard/pages/uk_dashboard11/view/uk_dashboard11_view.dart';
import 'package:fhe_template/module/03_ui_dashboard/pages/uk_dashboard12/view/uk_dashboard12_view.dart';
import 'package:fhe_template/module/03_ui_dashboard/pages/uk_dashboard13/view/uk_dashboard13_view.dart';
import 'package:fhe_template/module/03_ui_dashboard/pages/uk_dashboard14/view/uk_dashboard14_view.dart';
import 'package:fhe_template/module/03_ui_dashboard/pages/uk_dashboard15/view/uk_dashboard15_view.dart';
import 'package:fhe_template/module/03_ui_dashboard/pages/uk_dashboard16/view/uk_dashboard16_view.dart';
import 'package:fhe_template/module/03_ui_dashboard/pages/uk_dashboard17/view/uk_dashboard17_view.dart';
import 'package:fhe_template/module/03_ui_dashboard/pages/uk_dashboard18/view/uk_dashboard18_view.dart';
import 'package:fhe_template/module/03_ui_dashboard/pages/uk_dashboard19/view/uk_dashboard19_view.dart';
import 'package:fhe_template/module/03_ui_dashboard/pages/uk_dashboard2/view/uk_dashboard2_view.dart';
import 'package:fhe_template/module/03_ui_dashboard/pages/uk_dashboard20/view/uk_dashboard20_view.dart';
import 'package:fhe_template/module/03_ui_dashboard/pages/uk_dashboard3/view/uk_dashboard3_view.dart';
import 'package:fhe_template/module/03_ui_dashboard/pages/uk_dashboard4/view/uk_dashboard4_view.dart';
import 'package:fhe_template/module/03_ui_dashboard/pages/uk_dashboard5/view/uk_dashboard5_view.dart';
import 'package:fhe_template/module/03_ui_dashboard/pages/uk_dashboard6/view/uk_dashboard6_view.dart';
import 'package:fhe_template/module/03_ui_dashboard/pages/uk_dashboard7/view/uk_dashboard7_view.dart';
import 'package:fhe_template/module/03_ui_dashboard/pages/uk_dashboard8/view/uk_dashboard8_view.dart';
import 'package:fhe_template/module/03_ui_dashboard/pages/uk_dashboard9/view/uk_dashboard9_view.dart';
import 'package:fhe_template/module/03_ui_dashboard/widget/uk_dashboard_menu_item.dart';
import 'package:get/get.dart';
import '../view/ui_dashboard_view.dart';

class UiDashboardController extends GetxController {
  UiDashboardView? view;

  List items = [
    {
      'label': "Dashboard",
      'view': const UkDashboard1View(),
    },
    {
      'label': "Dashboard2",
      'view': const UkDashboard2View(),
    },
    {'label': "Dashboard3", 'view': const UkDashboard3View()},
    {
      'label': "Dashboard4",
      'view': const UkDashboard4View(),
    },
    {
      'label': "Dashboard5",
      'view': const UkDashboard5View(),
    },
    {
      'label': "Dashboard6",
      'view': const UkDashboard6View(),
    },
    {
      'label': "Dashboard7",
      'view': const UkDashboard7View(),
    },
    {
      'label': "Dashboard8",
      'view': const UkDashboard8View(),
    },
    {
      'label': "Dashboard9",
      'view': const UkDashboard9View(),
    },
    {
      'label': "Dashboard10",
      'view': const UkDashboard10View(),
    },
    {
      'label': "Dashboard11",
      'view': const UkDashboard11View(),
    },
    {
      'label': "Dashboard12",
      'view': const UkDashboard12View(),
    },
    {
      'label': "Dashboard13",
      ' view': const UkDashboard13View(),
    },
    {
      'label': "Dashboard14",
      'view': const UkDashboard14View(),
    },
    {
      'label': "Dashboard15",
      'view': const UkDashboard15View(),
    },
    {
      'label': "Dashboard16",
      'view': const UkDashboard16View(),
    },
    {
      'label': "Dashboard17",
      'view': const UkDashboard17View(),
    },
    {
      'label': "Dashboard18",
      'view': const UkDashboard18View(),
    },
    {
      'label': "Dashboard19",
      'view': const UkDashboard19View(),
    },
    {
      'label': "Dashboard20",
      'view': const UkDashboard20View(),
    },
  ];
}
