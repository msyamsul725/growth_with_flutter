import 'package:fhe_template/state_util.dart';
import 'package:flutter/material.dart';

import '../view/efw200_layout_view.dart';

class Efw200LayoutController extends State<Efw200LayoutView>
    implements MvcController {
  static late Efw200LayoutController instance;
  late Efw200LayoutView view;

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
