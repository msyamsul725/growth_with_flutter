import 'package:fhe_template/state_util.dart';
import 'package:flutter/material.dart';

import '../view/ecart3_view.dart';

class Ecart3Controller extends State<Ecart3View> implements MvcController {
  static late Ecart3Controller instance;
  late Ecart3View view;

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
