import 'package:flutter/material.dart';
import 'package:book_exapmle_app/screens/p137/widgets/p137_widget.dart';

class P137ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _P137ParentWidgetState();
}

class _P137ParentWidgetState extends State<P137ParentWidget> {
  int _rebuildCount = 0;

  void _handleTap() {
    setState(() {
      _rebuildCount += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[BUILD] $widget was built.');
    return Material(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(4),
      child: InkWell(
        onTap: _handleTap,
        child: Container(
          width: 200,
          height: 128,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Parent rebuild number $_rebuildCount', style: TextStyle(color: Colors.white),),
                SizedBox(height: 8,),
                // 定数化されるため const 有り無しでリビルドされるかどうかが変わる
                const P137ChildWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}