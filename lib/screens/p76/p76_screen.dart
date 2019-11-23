import 'package:flutter/material.dart';

class P76Screen extends StatelessWidget {

  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(title, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
      subtitle: Text(subtitle),
      leading: Icon(icon, color: Colors.blue,),
    );
  }

  Widget _buildListView() {
    return ListView(
      children: <Widget>[
        _tile('ListView', 'ListViewはコンテンツが表示領域を超える場合にスクロール可能になる', Icons.dashboard),
        _tile('概要', '水平または垂直にレイアウトが可能', Icons.comment),
        _tile('概要', 'コンテンツが表示領域に収まらない場合は自動的にスクロール可能になる', Icons.comment),
        _tile('Dummy', 'Dummy text', Icons.do_not_disturb_alt),
        _tile('Dummy', 'Dummy text', Icons.do_not_disturb_alt),
        _tile('Dummy', 'Dummy text', Icons.do_not_disturb_alt),
        _tile('Dummy', 'Dummy text', Icons.do_not_disturb_alt),
        _tile('Dummy', 'Dummy text', Icons.do_not_disturb_alt),
        _tile('Dummy', 'Dummy text', Icons.do_not_disturb_alt),
        _tile('Dummy', 'Dummy text', Icons.do_not_disturb_alt),
        _tile('Dummy', 'Dummy text', Icons.do_not_disturb_alt),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P76 ex'),
      ),
      body: _buildListView(),
    );
  }
}