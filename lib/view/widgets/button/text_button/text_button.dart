import 'package:flutter/material.dart';

class CTextButton extends StatelessWidget {
  final String? label;
  final EdgeInsetsGeometry? margin;
  final void Function()? onPressed;

  const CTextButton({Key? key, this.label, this.margin, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      margin: margin,
      width: double.maxFinite,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          label ?? '',
          style: TextStyle(color: Color(0xFFF0F0F5)),
        ),
      ),
    );
  }
}
