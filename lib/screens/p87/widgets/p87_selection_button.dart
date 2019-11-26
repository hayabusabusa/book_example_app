import 'package:flutter/material.dart';
import 'package:book_exapmle_app/screens/screen.dart';

class P87SelectionButton extends StatelessWidget {

  // Navigator.push の返し値として戻った際の値が取れる
  // ただし非同期的な動きになるので、Futureで受け取る
  Future<void> _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => P87SelectionScreen())
    );

    // バックスワイプでも走ってしまうのでnullチェックをする 
    if (result == null) {
      print(result);
    } else {
      Scaffold.of(context)
      ..removeCurrentSnackBar() // 表示済みのSnackBarを削除
      ..showSnackBar(SnackBar(content: Text(result),)); // SnackBarを表示
    }
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('オプションを選択'),
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
    );
  }
}