import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/eprofile7_view.dart';

class Eprofile7Controller extends State<Eprofile7View>
    implements MvcController {
  static late Eprofile7Controller instance;
  late Eprofile7View view;

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
