import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

// MARK: - StatefulWidget

class P109AnimatedLogo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _P109AnimatedLogoState();
}

// MARK: - State

// SingleTickerProviderStateMixin: AnimationController の引数に渡す vsync に必要
// 画面に表示されていないWidgetのアニメーションにリソースが消費されてしまうことを防ぐ
class _P109AnimatedLogoState extends State<P109AnimatedLogo> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(duration: Duration(seconds: 1), vsync: this);
    _animation = Tween<double>(begin: 0, end: 200).animate(_controller)
      ..addListener(() {
        // _animation の値が変更されたことをWidgetに通知するために setState()
        setState(() {});
      });
    
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _animation.value,
      height: _animation.value,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: FlutterLogo(),
    );
  }
}