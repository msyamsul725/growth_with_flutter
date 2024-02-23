import 'package:fhe_template/state_util.dart';
import 'package:flutter/material.dart';

import '../view/efw400_grid_view.dart';

class Efw400GridController extends State<Efw400GridView>
    implements MvcController {
  static late Efw400GridController instance;
  late Efw400GridView view;

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
