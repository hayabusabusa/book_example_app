import 'package:flutter/material.dart';
import 'package:book_exapmle_app/screens/p109/widgets/p109_widget.dart';

class P109Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P109 ex'),
      ),
      body: Center(
        child: P109AnimatedLogo(),
      ),
    );
  }
}