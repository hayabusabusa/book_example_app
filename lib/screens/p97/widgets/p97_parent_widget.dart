import 'package:flutter/material.dart';
import 'package:book_exapmle_app/screens/p97/widgets/p97_widget.dart';

class P97ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _P97ParentWidgetState();
}

class _P97ParentWidgetState extends State<P97ParentWidget> {
  bool _isActive = false;

  void _handleTapBoxChanged(bool newValue) {
    setState(() {
      _isActive = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: P97TapBox(active: _isActive, onChanged: _handleTapBoxChanged,),
    );
  }
}