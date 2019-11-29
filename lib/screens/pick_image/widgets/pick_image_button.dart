import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickImageButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PickImageButton();
}

class _PickImageButton extends State<PickImageButton> {
  File _image;

  Future _getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: _image == null 
        ? null 
        : BoxDecoration(
          border: Border.all(color: Colors.grey[300], width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
      child:  Center(
        child: _image == null 
          ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Image select'),
              SizedBox(height: 8),
              RaisedButton(
                child: Text('Select image'),
                onPressed: _getImage,
              )
            ],
          )
          : Image.file(
            _image,
            fit: BoxFit.cover,
          ),
      ),
    );
  }
}