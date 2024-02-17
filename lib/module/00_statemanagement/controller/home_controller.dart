import 'package:fhe_template/core.dart';

import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeView? view;

  List stateManagementList = [
    {
      "label": " Counter",
      "view": const CounterView(),
    },
    {
      "label": "Enable or Disable",
      "view": const EnableOrDisableView(),
    },
    {
      "label": "Loading",
      "view": const LoadingView(),
    },
    {
      "label": "Visibility",
      "view": const VisibilityView(),
    },
    {
      "label": "UpperCase & LowerCase",
      "view": const UppercaseLowerCaseView(),
    },
    {
      "label": "All animation",
      "view": const AllanimationView(),
    },
    {
      "label": "AnimationByMouseEvent",
      "view": const AnimationbyMouseEventView(),
    },
    {
      "label": "Slide Animation",
      "view": const SlideanimationView(),
    },
    {
      "label": "Scale Animation",
      "view": const ScaleAnimationView(),
    },
    {
      "label": "Scale Animation By Slide",
      "view": const ScaleAnimationBySlideValueView(),
    },
    {
      "label": "Digital Clock",
      "view": const DigitalclockView(),
    },
    {
      "label": "Rotate Animation",
      "view": const RotateAnimationView(),
    },
    {
      "label": "Fade Animation",
      "view": const FadeAnimationView(),
    },
    {
      "label": "Horizontal Category List",
      "view": const HorizontalCategoryListView(),
    },
    {
      "label": "Vertical Category List",
      "view": const VerticalCategoryListView(),
    },
    {
      "label": "Filter List",
      "view": const FilterlistView(),
    },
    {
      "label": "Catergory In Wrap",
      "view": const CategoryInWrapView(),
    },
    {
      "label": "Chat List",
      "view": const ChatListView(),
    },
    {
      "label": "Navigation",
      "view": const NavigationView(),
    },
    {
      "label": "CRUD",
      "view": const CrudView(),
    },
    {
      "label": "Repat Animation",
      "view": const RepeatAnimationView(),
    },
    {
      "label": "Navigation With Slide Animation",
      "view": const NavigationWithSlideAnimationView(),
    },
    {
      "label": "Scroll",
      "view": const ScrollGetxView(),
    },
    {
      "label": "Theme",
      "view": const ThemeView(),
    },
    {
      "label": "Notificatios",
      "view": const LocalPushNotification(),
    },
    {
      "label": "datetime stream",
      "view": const DateTimeStreamView(),
    },
  ];
}
