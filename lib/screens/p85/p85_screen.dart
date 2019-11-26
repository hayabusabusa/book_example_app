import 'package:flutter/material.dart';
import 'package:book_exapmle_app/screens/screen.dart';
import 'package:book_exapmle_app/models/p85/p85_model.dart';

class P85Screen extends StatelessWidget {
  final List<P85Todo> _todos;

  const P85Screen({Key key, @required List<P85Todo> todos})
    : assert(todos != null),
    _todos = todos,
    super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P85 ex'),
      ),
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_todos[index].title),
            subtitle: Text(_todos[index].description),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => P85DetailScreen(todo: _todos[index],))
              );
            },
          );
        },
      ),
    );
  }
}