import 'package:flutter/material.dart';
import 'package:book_exapmle_app/screens/p97/widgets/p97_widget.dart';

class P97Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P97 ex'),
      ),
      body: Center(
        child: P97ParentWidget(),
      ),
    );
  }
}