import 'package:fhe_template/state_util.dart';
import 'package:flutter/material.dart';

import '../view/edashboard9_view.dart';

class Edashboard9Controller extends State<Edashboard9View>
    implements MvcController {
  static late Edashboard9Controller instance;
  late Edashboard9View view;

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
