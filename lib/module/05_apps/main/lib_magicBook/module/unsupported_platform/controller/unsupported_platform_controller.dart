import 'package:fhe_template/state_util.dart';
import 'package:flutter/material.dart';

import '../view/unsupported_platform_view.dart';

class UnsupportedPlatformController extends State<UnsupportedPlatformView>
    implements MvcController {
  static late UnsupportedPlatformController instance;
  late UnsupportedPlatformView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
