import 'package:flutter/material.dart';

/// It is used to define the tab items
class TabItemIcon {
  final Color startColor;
  final Color endColor;
  final IconData iconData;
  final Color curveColor;
  final Widget Function(BuildContext context, Animation<Color> color)
      buildWidget;

  TabItemIcon({
    this.curveColor = const Color(0xff2A0835),
    this.startColor = Colors.black,
    this.endColor = Colors.white,
    this.iconData,
    this.buildWidget,
  });
}
