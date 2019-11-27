import 'package:flutter/material.dart';
import 'package:book_exapmle_app/screens/p95/widgets/p95_widget.dart';

class P95ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _P95ParentWidgetState();
}

class _P95ParentWidgetState extends State<P95ParentWidget> {
  bool _isActive = false;

  void _handleTapBoxChanged(bool newValue) {
    setState(() {
      _isActive = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: P95TapBox(
        isActive: _isActive,
        onChanged: _handleTapBoxChanged,
      ),
    );
  }
}