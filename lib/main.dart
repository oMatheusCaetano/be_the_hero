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
      title: 'Be the Hero',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF0F0F5),
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            color: Color(0xFF13131A),
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
          titleMedium: TextStyle(
            color: Color(0xFF13131A),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          bodyMedium: TextStyle(
            color: Color(0xFF737380),
            fontSize: 15,
          ),
          bodyLarge: TextStyle(
            color: Color(0xFF737380),
            fontSize: 20,
            fontWeight: FontWeight.w400,
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
