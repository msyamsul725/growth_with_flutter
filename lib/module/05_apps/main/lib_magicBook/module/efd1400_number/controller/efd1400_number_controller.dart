import 'package:fhe_template/state_util.dart';
import 'package:flutter/material.dart';

import '../view/efd1400_number_view.dart';

class Efd1400NumberController extends State<Efd1400NumberView>
    implements MvcController {
  static late Efd1400NumberController instance;
  late Efd1400NumberView view;

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
