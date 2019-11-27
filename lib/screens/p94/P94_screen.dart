import 'package:flutter/material.dart';
import 'package:book_exapmle_app/screens/p94/widgets/P94_widget.dart';

class P94Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P94 ex'),
      ),
      body: Center(
        child: P94TapBox(),
      ),
    );
  }
}