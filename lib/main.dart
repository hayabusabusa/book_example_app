import 'package:flutter/material.dart';
import 'package:book_exapmle_app/screens/home/home.dart';

void main() => runApp(BookExampleApp());

class BookExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}