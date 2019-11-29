import 'package:flutter/material.dart';

class P137ChildWidget extends StatelessWidget {
  // 定数化されるため const 有り無しでリビルドされるかどうかが変わる
  const P137ChildWidget({
    Key key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    print('[BUILD] $this was built.');
    return Container(
      width: 100,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(4)
      ),
      child: Center(
        child: Text('Child widget', style: TextStyle(color: Colors.white),),
      ),
    );
  }
}