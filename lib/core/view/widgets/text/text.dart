import 'package:flutter/material.dart';

class CText extends StatelessWidget {
  final String? text;
  final FontWeight? weight;
  final AlignmentGeometry? alignment;

  const CText(
    this.text, {
    Key? key,
    this.weight,
    this.alignment = Alignment.topLeft,
  }) : super(key: key);

  TextStyle? _handleStyle(BuildContext context) {
    return Theme
      .of(context)
      .textTheme
      .bodyMedium!
      .copyWith(fontWeight: weight);
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
