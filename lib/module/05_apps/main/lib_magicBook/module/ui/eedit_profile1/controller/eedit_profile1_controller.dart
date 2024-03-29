import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/eedit_profile1_view.dart';

class EeditProfile1Controller extends State<EeditProfile1View>
    implements MvcController {
  static late EeditProfile1Controller instance;
  late EeditProfile1View view;

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
