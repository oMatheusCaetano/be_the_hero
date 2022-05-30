import 'package:flutter/material.dart';

import 'package:be_the_hero/core/domain/helpers/media.dart';
import 'package:be_the_hero/core/view/widgets/text/text.dart';

class CAppBar extends StatelessWidget with PreferredSizeWidget {
  const CAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: UMedia.svg(UMedia.logoSvg, alt: 'Be the Hero', fit: BoxFit.fitHeight),
      actions: [
        CText(
          'Total de',
          alignment: Alignment.center,
        ),
        CText(
          ' 43 casos',
          alignment: Alignment.center,
          weight: FontWeight.bold,
        ),
        SizedBox(width: 24),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
