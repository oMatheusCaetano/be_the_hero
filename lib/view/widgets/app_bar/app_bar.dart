import 'package:flutter/material.dart';

import 'package:be_the_hero/domain/helpers/media.dart';
import 'package:be_the_hero/view/widgets/text/text.dart';

class CAppBar extends StatelessWidget with PreferredSizeWidget {
  final List<Widget>? actions;

  const CAppBar({Key? key, this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: UMedia.svg(
        UMedia.logoSvg, 
        alt: 'Be the Hero', 
        fit: BoxFit.fitHeight,
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
