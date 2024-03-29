import 'package:flutter/material.dart';

import '../../../../../../../../state_util.dart';
import '../view/edashboard10_view.dart';

class Edashboard10Controller extends State<Edashboard10View>
    implements MvcController {
  static late Edashboard10Controller instance;
  late Edashboard10View view;

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
