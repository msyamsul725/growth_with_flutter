import 'package:fhe_template/state_util.dart';
import 'package:flutter/material.dart';

import '../view/efd1100_variable_view.dart';

class Efd1100VariableController extends State<Efd1100VariableView>
    implements MvcController {
  static late Efd1100VariableController instance;
  late Efd1100VariableView view;

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
