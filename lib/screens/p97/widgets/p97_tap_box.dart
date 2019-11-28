import 'package:flutter/material.dart';

// MARK: - StatefulWidget

class P97TapBox extends StatefulWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

  P97TapBox({
    Key key,
    this.active = false,
    @required this.onChanged
  }): assert(active != null),
      assert(onChanged != null),
      super(key: key);

  @override
  State<StatefulWidget> createState() => _P97TapBoxState();
}

// MARK: - State

class _P97TapBoxState extends State<P97TapBox> {
  // ハイライトされているかどうか
  //(表示にのみ関わるもので、ユーザーは意識するものではないので子のWidgetで持つ)
  bool _isHighlighted = false;

  void _handleTapDown(TapDownDetails tapDownDetails) {
    setState(() {
      _isHighlighted = true;
    });
  }

  void _handleTapUp(TapUpDetails tapUpDetails) {
    setState(() {
      _isHighlighted = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _isHighlighted = false;
    });
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      onTap: _handleTap,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: _isHighlighted ? Colors.lightGreen[700] : Colors.grey[600],
          border: _isHighlighted ? Border.all(width: 10, color: Colors.teal[700]) : null,
        ),
        child: Center(
          child: Text(
            widget.active ? 'Active' : 'Inactive',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}