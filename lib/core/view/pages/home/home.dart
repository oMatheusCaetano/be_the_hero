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
      appBar: AppBar(
        leading: Icon(Icons.add),
        actions: [
          CText(
            'Total de',
            alignment: Alignment.center,
          ),
          CText(
            ' 43 casos', 
            alignment: Alignment.center,
            weight: FontWeight.bold,
          ),
          SizedBox(width: 24),
        ],
      ),
    );
  }
}
