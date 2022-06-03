import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UMedia {
  static const logoSvg = 'assets/images/logo.svg';
  static const injuredSvg = 'assets/images/injured.svg';

  static Widget svg(String path,
      {BoxFit fit = BoxFit.contain,
      double? height,
      String? alt,
      bool expanded = false}) {
    final svg = SvgPicture.asset(
      path,
      semanticsLabel: alt,
      fit: fit,
      height: height,
    );

    return expanded ? Expanded(child: svg) : svg;
  }
}
