import 'package:flutter/material.dart';
import 'package:book_exapmle_app/models/home/home.dart';
import 'package:book_exapmle_app/screens/screen.dart';

class HomeListTile extends StatelessWidget {

  final HomeCellType _cellType;

  HomeListTile(this._cellType);

  @override
  Widget build(BuildContext context) {
    switch (_cellType) {
      // - P72
      case HomeCellType.p72:
        return ListTile(
          title: Text('Container'),
          subtitle: Text('Basic of layout.'),
          leading: CircleAvatar(
            child: Text('P72'),
          ),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return P72Screen();
              })
            );
          },
        );
      // - P75
      case HomeCellType.p75:
        return ListTile(
          title: Text('GridView'),
          subtitle: Text('Basic of layout.'),
          leading: CircleAvatar(
            child: Text('P75'),
          ),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return P75Screen();
              })
            );
          },
        );
      // - P76
      case HomeCellType.p76:
        return ListTile(
          title: Text('ListView'),
          subtitle: Text('Basic of layout.'),
          leading: CircleAvatar(
            child: Text('P76'),
          ),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return P76Screen();
              })
            );
          },
        );
      case HomeCellType.p78:
        return ListTile(
          title: Text('Card'),
          subtitle: Text('Basic of layout.'),
          leading: CircleAvatar(
            child: Text('P78'),
          ),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return P78Screen();
              })
            );
          },
        );
      // - P83
      case HomeCellType.p83:
        return ListTile(
          title: Text('Navigator push'),
          subtitle: Text('Basic of navigation and state.'),
          leading: CircleAvatar(
            child: Text('P83'),
          ),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return P83Screen();
              })
            );
          },
        );
      default:
        return ListTile(
          title: Text('UNKNOWN'),
        );
    }
  }
}