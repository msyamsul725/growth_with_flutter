import 'package:fhe_template/state_util.dart';
import 'package:flutter/material.dart';

import '../view/echat2_view.dart';

class Echat2Controller extends State<Echat2View> implements MvcController {
  static late Echat2Controller instance;
  late Echat2View view;

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
