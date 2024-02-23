import 'package:fhe_template/state_util.dart';
import 'package:flutter/material.dart';

import '../view/eprofile2_view.dart';

class Eprofile2Controller extends State<Eprofile2View>
    implements MvcController {
  static late Eprofile2Controller instance;
  late Eprofile2View view;

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
