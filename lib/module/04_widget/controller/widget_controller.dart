import 'package:fhe_template/module/04_widget/pages/uk_button/view/uk_button_view.dart';
import 'package:fhe_template/module/04_widget/pages/uk_carousel/view/uk_carousel_view.dart';
import 'package:get/get.dart';
import '../view/widget_view.dart';

class WidgetController extends GetxController {
  WidgetView? view;

  List widgetUi = [
    {
      'label': 'button',
      "view": const UkButtonView(),
    },
    {
      "label": 'carousel',
      'view': const UkCarouselView(),
    }
  ];
}
