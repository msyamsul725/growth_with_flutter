import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/esignup1_view.dart';

class Esignup1Controller extends State<Esignup1View> implements MvcController {
  static late Esignup1Controller instance;
  late Esignup1View view;

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
