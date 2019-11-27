import 'package:flutter/material.dart';

class P91DetailScreen extends StatelessWidget {
  final String _imageURL;

  P91DetailScreen({ Key key, @required String imageURL }):
    assert(imageURL != null),
    _imageURL = imageURL,
    super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          // - Close Button
          Positioned(
            top: 40,
            left: 24,
            child: IconButton(
              icon: Icon(Icons.close),
              color: Colors.grey[300],
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          // - Image
          GestureDetector(
            child: Center(
              child: Hero(
                tag: 'P91_screen_image',
                child: Image.network(_imageURL),
              ),
            ),
          ),
        ],
      )
    );
  }
}