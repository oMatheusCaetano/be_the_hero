import 'package:flutter/material.dart';

import 'package:be_the_hero/domain/helpers/media.dart';

class CAppBar extends StatelessWidget with PreferredSizeWidget {
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Widget? title;

  const CAppBar({Key? key, this.title, this.backgroundColor, this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: false,
      title: title ?? UMedia.svg(
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
