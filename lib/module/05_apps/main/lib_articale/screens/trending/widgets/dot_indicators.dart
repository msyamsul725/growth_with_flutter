import 'package:fhe_template/module/05_apps/main/lib_articale/shared/colors.dart';
import 'package:flutter/material.dart';

class DotIndicators extends StatelessWidget {
  final int dotLength;
  final double currentIndex;

  const DotIndicators({
    super.key,
    required this.dotLength,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        dotLength,
        (index) => Icon(
          index == currentIndex.round() ? Icons.circle : Icons.circle_outlined,
          color: blackColorOp060,
          size: 8,
        ),
      ),
    );
  }
}
