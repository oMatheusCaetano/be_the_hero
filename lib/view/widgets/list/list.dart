import 'package:flutter/material.dart';

class CList extends StatelessWidget {
  final int? count;
  final List<dynamic>? data;
  final Widget Function(dynamic, BuildContext, int) builder;
  final Future<void> Function() onRefresh;

  const CList({
    Key? key,
    this.count,
    this.data,
    required this.onRefresh,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: onRefresh,
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemCount: count ?? (data != null ? data!.length : 0),
          separatorBuilder: (_, __) => SizedBox(height: 16),
          itemBuilder: (c, i) {
            final item = (data != null) ? data![i] : null;
            return builder(item, c, i);
          },
        ),
      ),
    );
  }
}
