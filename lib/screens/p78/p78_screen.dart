import 'package:flutter/material.dart';

class P78Screen extends StatelessWidget {

  Widget _buildCard(String name, String description, String phone, String email) {
    return SizedBox(
      height: 210,
      child: Card(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(name, style: TextStyle(fontWeight: FontWeight.w500),),
              subtitle: Text(description), 
              leading: Icon(Icons.restaurant_menu, color: Colors.blue,),
            ),
            Divider(),
            ListTile(
              title: Text(phone, style: TextStyle(fontWeight: FontWeight.w500),),
              leading: Icon(Icons.contact_phone, color: Colors.blue,),
            ),
            ListTile(
              title: Text(email, style: TextStyle(fontWeight: FontWeight.w500),),
              leading: Icon(Icons.contact_mail, color: Colors.blue,),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionCard() {
    return SizedBox(
      height: 480,
      child: Card(
        child: Column(
          children: <Widget>[
            SizedBox(height: 16,), // Spacer
            ListTile(
              title: Text('Card', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
              subtitle: Text(
                '''Cardは関連する複数の情報をひとまとめに表示するときに利用されるウィジェット。\nCardの子要素は1つのみだが、Column、Rowなどと組み合わせることで複数の子要素を持つことが可能。''',
                style: TextStyle(color: Colors.grey[400])
              ),
            ),
            Divider(),
            ListTile(
              title: Text('主に関連する複数の情報をひとまとめに表示する用途で用いられる。'),
              leading: Icon(Icons.info_outline, color: Colors.blue,),
            ),
            ListTile(
              title: Text('子要素は1つのみだが、複数の子要素を持てるウィジェットを使うことで、複数の子要素を持つことができる。'),
              leading: Icon(Icons.info_outline, color: Colors.blue,),
            ),
            ListTile(
              title: Text('デフォルトで角丸とドロップシャドウが付いている。'),
              leading: Icon(Icons.info_outline, color: Colors.blue,),
            ),
            ListTile(
              title: Text('デフォルトでは0px x 0pxに縮んでしまうため、SizedBoxなどでサイズの指定が必要。'),
              leading: Icon(Icons.info_outline, color: Colors.blue,),
            ),
            ListTile(
              title: Text('中のコンテンツはスクロール不可能'),
              leading: Icon(Icons.info_outline, color: Colors.blue,),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P78 ex'),
      ),
      body: ListView(
        children: <Widget>[
          _buildCard('xxxxxxxxxxxx', 'yyyyyyyyyyy', '03-1234-5678', 'example@example.com'),
          _buildDescriptionCard()
        ],
      ),
    );
  }
}