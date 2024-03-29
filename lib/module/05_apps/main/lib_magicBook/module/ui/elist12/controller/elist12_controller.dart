import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/elist12_view.dart';

class Elist12Controller extends State<Elist12View> implements MvcController {
  static late Elist12Controller instance;
  late Elist12View view;

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
