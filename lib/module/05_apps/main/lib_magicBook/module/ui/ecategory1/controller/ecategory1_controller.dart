import 'package:fhe_template/state_util.dart';
import 'package:flutter/material.dart';

import '../view/ecategory1_view.dart';

class Ecategory1Controller extends State<Ecategory1View>
    implements MvcController {
  static late Ecategory1Controller instance;
  late Ecategory1View view;

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
