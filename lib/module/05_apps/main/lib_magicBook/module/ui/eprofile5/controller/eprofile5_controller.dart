import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/eprofile5_view.dart';

class Eprofile5Controller extends State<Eprofile5View>
    implements MvcController {
  static late Eprofile5Controller instance;
  late Eprofile5View view;

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
