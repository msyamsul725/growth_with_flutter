import 'package:fhe_template/state_util.dart';
import 'package:flutter/material.dart';

import '../view/edashboard8_view.dart';

class Edashboard8Controller extends State<Edashboard8View>
    implements MvcController {
  static late Edashboard8Controller instance;
  late Edashboard8View view;

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
