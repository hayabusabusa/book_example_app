import 'package:flutter/material.dart';
import 'package:book_exapmle_app/models/p85/p85_model.dart';

class P85DetailScreen extends StatelessWidget {
  final P85Todo _todo;

  P85DetailScreen({ Key key, P85Todo todo })
    : assert(todo != null),
    _todo = todo,
    super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_todo.title),
      ),
      body: Center(
        child: Text(_todo.description),
      ),
    );
  }
}