import 'package:flutter/material.dart';

class HDimensions {
  late final double top;
  late final double vh;
  late final double vw;

  HDimensions(BuildContext context) {
    final media = MediaQuery.of(context);
    top = media.viewPadding.top;
    vh = media.size.height;
    vw = media.size.width;
  }
}
