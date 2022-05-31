import 'package:flutter/material.dart';

class CIf extends StatelessWidget {
  final bool condition;
  final Widget? child;
  final Widget? childElse;

  const CIf({
    Key? key, 
    required this.condition, 
    this.child,
    this.childElse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return condition ? (child ?? SizedBox()) : (childElse ?? SizedBox());
  }
}
