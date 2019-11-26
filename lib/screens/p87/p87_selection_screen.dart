import 'package:flutter/material.dart';

class P87SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('オプション選択'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8),
              child: RaisedButton(
                child: Text('選択肢1'),
                onPressed: () {
                  // popの引数に受け取りたい値を入れる
                  Navigator.of(context).pop('選択肢1');
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: RaisedButton(
                child: Text('選択肢2'),
                onPressed: () {
                  // popの引数に受け取りたい値を入れる
                  Navigator.of(context).pop('選択肢2');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}