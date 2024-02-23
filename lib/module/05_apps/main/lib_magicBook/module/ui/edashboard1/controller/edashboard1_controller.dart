import 'package:fhe_template/state_util.dart';
import 'package:flutter/material.dart';

import '../view/edashboard1_view.dart';

class Edashboard1Controller extends State<Edashboard1View>
    implements MvcController {
  static late Edashboard1Controller instance;
  late Edashboard1View view;

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
