import 'package:flutter/material.dart';
import 'package:book_exapmle_app/screens/screen.dart';

class P91Screen extends StatelessWidget {
  final String _imageURL = 'https://picsum.photos/250?image=9';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P91 ex'),
      ),
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'P91_screen_image',
            child: Image.network(_imageURL)
          ),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => P91DetailScreen(imageURL: _imageURL,),
              // PresentModal みたいな遷移では Hero のアニメーションが実行されなかった
              //fullscreenDialog: true,
            )
          );
        },
      ),
    );
  }
}