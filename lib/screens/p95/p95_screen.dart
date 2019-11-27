import 'package:flutter/material.dart';
import 'package:book_exapmle_app/screens/p95/widgets/p95_widget.dart';

class P95Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P95 ex'),
      ),
      body: Center(
        child: P95ParentWidget(),
      ),
    );
  }
}