import 'package:flutter/material.dart';
import 'package:quiz/Page/home_page.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          textTheme: TextTheme(
            caption: TextStyle(fontSize: 22, color: Colors.white),
          ),
        fontFamily: 'Georfia'
      ),
      home: HomePage(),
    );
  }
}
