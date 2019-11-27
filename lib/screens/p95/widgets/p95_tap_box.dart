import 'package:flutter/material.dart';

class P95TapBox extends StatelessWidget {
  final bool isActive;
  final ValueChanged<bool> onChanged;

  P95TapBox({
    Key key,
    this.isActive: false,
    @required this.onChanged
  }) : 
  assert(isActive != null),
  assert(onChanged != null),
  super(key: key);

  void _handleTap() {
    // 親Widgetに状態が変更したことを通知する
    onChanged(!isActive);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: isActive ? Colors.lightGreen[700] : Colors.grey[600],
        ),
        child: Center(
          child: Text(
            isActive ? 'Active' : 'Inactive',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}