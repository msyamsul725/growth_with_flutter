import 'package:fhe_template/shared/theme/theme_constants.dart';
import 'package:fhe_template/shared/theme/theme_size.dart';
import 'package:flutter/material.dart';

class QButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final double? width;
  final double? height;
  final IconData? icon;
  final IconData? sufixIcon;
  final Color? color;
  final bool spaceBetween;
  final ThemeSize size;
  final double? fontSize;
  final bool enabled;

  const QButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.width,
    this.height,
    this.icon,
    this.sufixIcon,
    this.color,
    this.spaceBetween = false,
    this.size = ThemeSize.md,
    this.fontSize,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widgetWidth = width ?? MediaQuery.of(context).size.width;
    double widgetHeight = 46.0;
    double widgetFontSize = 16.0;
    double widgetIconSize = 24.0;

    widgetWidth *= size.scaleFactor;
    widgetHeight *= size.scaleFactor;
    widgetFontSize *= size.scaleFactor;
    widgetIconSize *= size.scaleFactor;

    widgetHeight = height ?? widgetHeight;

    return SizedBox(
      width: widgetWidth,
      height: widgetHeight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: enabled ? (color ?? primaryColor) : disabledColor,
        ),
        onPressed: () => enabled ? onPressed() : {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(
                icon!,
                size: widgetIconSize,
              ),
              const SizedBox(
                width: 6.0,
              ),
            ],
            if (spaceBetween && icon != null) const Spacer(),
            Text(
              label,
              style: TextStyle(
                fontSize: fontSize ?? widgetFontSize,
                color: Colors.white,
              ),
            ),
            if (spaceBetween && sufixIcon != null) const Spacer(),
            if (sufixIcon != null) ...[
              Icon(
                sufixIcon!,
                size: widgetIconSize,
              ),
              const SizedBox(
                width: 6.0,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
