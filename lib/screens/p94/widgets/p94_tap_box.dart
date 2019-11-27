import 'package:flutter/material.dart';

// MARK: - Widget

class P94TapBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _P94TapBoxState();
}

// MARK: - State

class _P94TapBoxState extends State<P94TapBox> {
  bool _isActive = false;

  void _handleTap() {
    setState(() {
      _isActive = !_isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: _isActive ? Colors.lightGreen[300] : Colors.grey[700]
        ),
        child: Center(
          child: Text(
            _isActive ? 'Active' : 'Inactive',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
      ),
    );
  }
}