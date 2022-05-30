import 'package:flutter/material.dart';

enum CTextTheme {
  titleLarge,
  titleMedium,
  bodyLarge,
  bodyMedium,
}

class CText extends StatelessWidget {
  final String? text;
  final FontWeight? weight;
  final AlignmentGeometry? alignment;
  final CTextTheme? theme;

  const CText(
    this.text, {
    Key? key,
    this.weight,
    this.theme,
    this.alignment = Alignment.topLeft,
  }) : super(key: key);

  TextStyle? _handleStyle(BuildContext context) {
    TextStyle? t;

    switch (theme) {
      case CTextTheme.titleLarge:
        t = Theme.of(context).textTheme.titleLarge;
        break;
      case CTextTheme.titleMedium:
        t = Theme.of(context).textTheme.titleMedium;
        break;
      case CTextTheme.bodyLarge:
        t = Theme.of(context).textTheme.bodyLarge;
        break;
      default:
        t = Theme.of(context).textTheme.bodyMedium;
    }

    return t!.copyWith(fontWeight: weight);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text ?? '',
        style: _handleStyle(context),
      ),
    );
  }
}
