import 'package:fhe_template/state_util.dart';
import 'package:flutter/material.dart';

import '../view/ecart1_view.dart';

class Ecart1Controller extends State<Ecart1View> implements MvcController {
  static late Ecart1Controller instance;
  late Ecart1View view;

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
