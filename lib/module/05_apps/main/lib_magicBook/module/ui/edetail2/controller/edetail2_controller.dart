import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/edetail2_view.dart';

class Edetail2Controller extends State<Edetail2View> implements MvcController {
  static late Edetail2Controller instance;
  late Edetail2View view;

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
