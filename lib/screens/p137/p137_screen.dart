import 'package:flutter/material.dart';
import 'package:book_exapmle_app/screens/p137/widgets/p137_widget.dart';

class P137Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P137 ex'),
      ),
      body: Center(
        child: P137ParentWidget(),
      ),
    );
  }
}