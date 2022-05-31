import 'package:be_the_hero/view/widgets/text/text.dart';
import 'package:flutter/widgets.dart';

class CTile extends StatelessWidget {
  final String? title;
  final String? text;
  final EdgeInsetsGeometry? margin;

  const CTile(this.title, this.text, {Key? key, this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CText(
            title ?? '',
            theme: CTextTheme.displayMedium,
            margin: EdgeInsets.only(bottom: 5),
          ),
          CText(text ?? ''),
        ],
      ),
    );
  }
}
