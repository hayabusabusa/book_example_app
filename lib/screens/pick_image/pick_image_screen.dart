import 'package:flutter/material.dart';
import 'package:book_exapmle_app/screens/pick_image/widgets/pick_image_widget.dart';

class PickImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick image'),
      ),
      body: Center(
        child: PickImageButton(),
      ),
    );
  }
}