import 'package:be_the_hero/core/view/widgets/appbar/app_bar.dart';
import 'package:be_the_hero/core/view/widgets/text/text.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            CText(
              'Bem-vindo!',
              theme: CTextTheme.titleLarge
            ),
            SizedBox(height: 10),
            CText(
              'Escolha um dos casos abaixo e salve o dia.',
              theme: CTextTheme.bodyLarge
            ),
          ],
        ),
      )
    );
  }
}
