import 'package:flutter/material.dart';

class P83DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P83 ex detail'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Pop'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}