import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/edetail6_view.dart';

class Edetail6Controller extends State<Edetail6View> implements MvcController {
  static late Edetail6Controller instance;
  late Edetail6View view;

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
