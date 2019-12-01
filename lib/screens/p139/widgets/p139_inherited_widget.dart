import 'package:flutter/material.dart';
import 'package:book_exapmle_app/models/p139/p139_model.dart';

class P139InheritedWidget extends InheritedWidget {

  // 上位ツリーのステートが持つデータ
  final P139Data data;

  const P139InheritedWidget({
    Key key,
    @required this.data,
    @required Widget child,
  }) : super(key: key, child: child); // superの形がいままでと違う

  // of メソッドを実装
  // BuildContext は上位ツリーの BuildContext を受け取る
  // observe はデータを監視するかどうかを受け取る
  // 監視しない場合は of でアクセスされた時点でのデータを使用する
  static P139InheritedWidget of(
    BuildContext context, 
    { @required bool observe }
  ) {
    return observe
      ? context.inheritFromWidgetOfExactType(P139InheritedWidget)
      : context.ancestorInheritedElementForWidgetOfExactType(P139InheritedWidget).widget; 
  }

  // updateShouldNotify(InheritedWidget: oldWidget)
  // 更新が必要になる条件を返す
  // equatable 継承のオブジェクトならここで比較すればいいのかも？
  @override
  bool updateShouldNotify(P139InheritedWidget oldWidget) => oldWidget.data.title != data.title;
}