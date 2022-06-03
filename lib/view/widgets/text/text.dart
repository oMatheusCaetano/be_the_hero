import 'package:flutter/material.dart';

enum CTextTheme {
  titleLarge,
  titleMedium,
  bodyLarge,
  bodyMedium,
  displayMedium,
}

class CText extends StatelessWidget {
  final String? text;
  final FontWeight? weight;
  final AlignmentGeometry? alignment;
  final CTextTheme? theme;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const CText(
    this.text, {
    Key? key,
    this.alignment = Alignment.topLeft,
    this.weight,
    this.theme,
    this.margin,
    this.padding,
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

      case CTextTheme.displayMedium:
        t = Theme.of(context).textTheme.displayMedium;
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
      padding: padding,
      margin: margin,
      child: Text(
        text ?? '',
        style: _handleStyle(context),
      ),
    );
  }
}
