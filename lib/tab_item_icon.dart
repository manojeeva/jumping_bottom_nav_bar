import 'package:flutter/material.dart';

/// It is used to define the tab items
class TabItemIcon {
  final Color startColor;
  final Color endColor;
  final IconData iconData;
  final Color curveColor;

  TabItemIcon({
    this.curveColor = const Color(0xff2A0835),
    this.startColor = Colors.black,
    this.endColor = Colors.white,
    @required this.iconData,
  });
}
