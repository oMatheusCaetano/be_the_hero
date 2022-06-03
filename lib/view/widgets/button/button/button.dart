import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  final bool? isDisabled;
  final String? label;
  final EdgeInsetsGeometry? margin;
  final void Function()? onPressed;

  const CButton({
    Key? key, 
    this.label, 
    this.onPressed, 
    this.margin = const EdgeInsets.symmetric(horizontal: 24), 
    this.isDisabled = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      margin: margin,
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: onPressed,
        style: (isDisabled == true)
            ? ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.red.withOpacity(.2)))
            : null,
        child: Text(label ?? ''),
      ),
    );
  }
}
