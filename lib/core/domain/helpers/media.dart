import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UMedia {
  static const logoSvg = 'assets/images/logo.svg';

  static Widget svg(String path, {
    BoxFit fit = BoxFit.contain,
    String? alt,
  }) {
    return SvgPicture.asset(
      path,
      semanticsLabel: alt, 
      fit: fit
    );
  }
}
