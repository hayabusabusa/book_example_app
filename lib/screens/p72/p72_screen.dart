import 'package:flutter/material.dart';

class P72Screen extends StatelessWidget {

  Widget _buildWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Container
        Container(
          child: SizedBox(width: 88, height: 88,),
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(width: 1, color: Colors.blueGrey),
            borderRadius: BorderRadius.all(Radius.circular(8))
          ),
        ),
        // Spacer
        SizedBox(height: 16,),
        // Description
        Text('Containerは多くのレイアウトで使われる\n基本的なウィジェット。'),
        // Spacer
        SizedBox(height: 16,),
        Text('･padding, border, marginの設定'),
        Text('･背景色や画像の変更'),
        Text('1つの子ウィジェット(child)')
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P72 ex'),
      ),
      body: Center(
        child: _buildWidget(),
      ),
    );
  }
}