import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/elogin3_view.dart';

class Elogin3Controller extends State<Elogin3View> implements MvcController {
  static late Elogin3Controller instance;
  late Elogin3View view;

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
