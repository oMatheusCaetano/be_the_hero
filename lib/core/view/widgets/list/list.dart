import 'package:flutter/material.dart';

class CList extends StatelessWidget {
  final int count;
  final Widget Function(BuildContext, int) builder;

  const CList({
    Key? key, 
    required this.count, 
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemCount: count,
        separatorBuilder: (_, __) => SizedBox(height: 16),
        itemBuilder: builder,
      ),
    );
  }
}
