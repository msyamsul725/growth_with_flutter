import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/edetail7_view.dart';

class Edetail7Controller extends State<Edetail7View> implements MvcController {
  static late Edetail7Controller instance;
  late Edetail7View view;

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
