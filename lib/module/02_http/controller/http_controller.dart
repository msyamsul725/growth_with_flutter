import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class HttpController extends GetxController {
  HttpView? view;

  List https = [
    {
      "label": "Login",
      "view": const LoginHttpView(),
    },
    {
      "label": "Product",
      "view": const ProductListView(),
    },
    {
      "label": "Dashboard",
      "view": const DashboardView(),
    },
    {
      "label": "Image Galeris",
      "view": const ImageGalleriesView(),
    },
    {
      "label": "Static Card",
      "view": const StaticCardView(),
    },
    {
      "label": " Line Chart",
      "view": const LineChartView(),
    },
    {
      "label": "Pie Chart",
      "view": const PieChartView(),
    },
    {
      "label": "TodoList",
      "view": const TodolistView(),
    },
    {
      "label": "Product CRUD",
      "view": ProductCRUDView,
    },
    {
      "label": "Map Marker",
      "view": MapMarkerView,
    },
  ];
}
