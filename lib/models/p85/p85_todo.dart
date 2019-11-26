import 'package:flutter/foundation.dart';

class P85Todo {
  final String title;
  final String description;

  const P85Todo({ @required this.title, @required this.description }) 
    : assert(title != null), assert(description != null);
}