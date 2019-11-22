import 'package:flutter/material.dart';

class P75Screen extends StatelessWidget {

  final List<MaterialColor> _colors = [
    Colors.red,
    Colors.teal,
    Colors.lime,
    Colors.orange,
    Colors.blue,
    Colors.cyan];

  // final List<String> _strs = [
  //   'GridViewはウィジェットを\n二次元のリストとして配置するウィジェット',
  //   'ウィジェットをグリッド状に配置する',
  //   'グリッドの作成方法には、自分で組み立てる方法と、提供済みのAPIを使う方法がある',
  //   'GridView.count: 一列の要素数を指定して作成',
  //   'GridView.extent: タイル(Gridの各要素)の最大値を指定して作製'
  // ];

  Widget _buildWidget() {
    return GridView.extent(
      maxCrossAxisExtent: 150,
      padding: EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _colors.map((color) => Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(4))
        ),
      )).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("P75 ex"),
      ),
      body: _buildWidget(),
    );
  }
}