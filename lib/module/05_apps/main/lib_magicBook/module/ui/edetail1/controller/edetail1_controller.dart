import 'package:fhe_template/state_util.dart';
import 'package:flutter/material.dart';

import '../view/edetail1_view.dart';

class Edetail1Controller extends State<Edetail1View> implements MvcController {
  static late Edetail1Controller instance;
  late Edetail1View view;

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
