import 'package:flutter/material.dart';

class FadeRoute extends PageRouteBuilder {
  final Widget page;

  FadeRoute({
    this.page
  }): super(
    // - page
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => page,
    // - transitions
    transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) 
      => FadeTransition(opacity: animation, child: child,),
  );
}