import 'package:flutter/material.dart';
import 'package:book_exapmle_app/screens/screen.dart';

class P83Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P83 ex'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Push'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => P83DetailScreen()),
            );
          },
        ),
      ),
    );
  }
}