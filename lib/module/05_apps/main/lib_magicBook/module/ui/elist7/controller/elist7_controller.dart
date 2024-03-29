import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/elist7_view.dart';

class Elist7Controller extends State<Elist7View> implements MvcController {
  static late Elist7Controller instance;
  late Elist7View view;

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
