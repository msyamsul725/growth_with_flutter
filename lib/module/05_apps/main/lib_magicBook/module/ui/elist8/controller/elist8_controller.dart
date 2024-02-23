import 'package:fhe_template/state_util.dart';
import 'package:flutter/material.dart';
import '../view/elist8_view.dart';

class Elist8Controller extends State<Elist8View> implements MvcController {
  static late Elist8Controller instance;
  late Elist8View view;

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
