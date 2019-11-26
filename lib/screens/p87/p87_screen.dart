import 'package:flutter/material.dart';
import 'package:book_exapmle_app/screens/p87/widgets/p87_widget.dart';

class P87Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P87 ex'),
      ),
      body: Center(
        child: P87SelectionButton(),
      ),
    );
  }
}