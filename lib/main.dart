import 'package:be_the_hero/core/view/pages/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Be The Hero',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Color(0xFF737380),
            fontSize: 15
          ),
        ),
        appBarTheme: AppBarTheme(
          color: Color(0xFFF0F0F5),
          elevation: 0,
        ),
      ),
      home: Home(),
    );
  }
}
