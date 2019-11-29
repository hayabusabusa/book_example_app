import 'package:flutter/material.dart';
import 'package:book_exapmle_app/models/home/home.dart';
import 'package:book_exapmle_app/models/p85/p85_model.dart';
import 'package:book_exapmle_app/screens/screen.dart';

class HomeListTile extends StatelessWidget {

  final HomeCellType _cellType;

  HomeListTile({ Key key, @required HomeCellType cellType }):
    assert(cellType != null),
    _cellType = cellType,
    super(key: key);

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
      // - P78
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
          subtitle: Text('Basic of navigation.'),
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
      // - P85
      case HomeCellType.p85:
        return ListTile(
          title: Text('Navigator push with data'),
          subtitle: Text('Basic of navigation.'),
          leading: CircleAvatar(
            child: Text('P85'),
          ),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return P85Screen(todos: List.generate(20, (i) => P85Todo(title: 'TODO $i', description: 'TODO $i の詳細')));
              })
            );
          },
        );
      // - P87
      case HomeCellType.p87:
        return ListTile(
          title: Text('Navigator pop with data'),
          subtitle: Text('Basic of navigation.'),
          leading: CircleAvatar(
            child: Text('P87'),
          ),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return P87Screen();
              })
            );
          },
        );
      // - P91
      case HomeCellType.p91:
        return ListTile(
          title: Text('Navigator push with Hero animation'),
          subtitle: Text('Basic of navigation.'),
          leading: CircleAvatar(
            child: Text('P91'),
          ),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return P91Screen();
              })
            );
          },
        );
      // - P94
      case HomeCellType.p94:
        return ListTile(
          title: Text('StatefullWidget manages own state.'),
          subtitle: Text('Basic of state.'),
          leading: CircleAvatar(
            child: Text('P94'),
          ),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return P94Screen();
              })
            );
          },
        );
      // - P95
      case HomeCellType.p95:
        return ListTile(
          title: Text('StatefullWidget with parent widget.'),
          subtitle: Text('Basic of state.'),
          leading: CircleAvatar(
            child: Text('P95'),
          ),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return P95Screen();
              })
            );
          },
        );
      // - P97
      case HomeCellType.p97:
        return ListTile(
          title: Text('State managed by parent and own state.'),
          subtitle: Text('Basic of state.'),
          leading: CircleAvatar(
            child: Text('P97'),
          ),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return P97Screen();
              })
            );
          },
        );
      // - P109
      case HomeCellType.p109:
        return ListTile(
          title: Text('Animation with AnimationController.'),
          subtitle: Text('Basic of animation.'),
          leading: CircleAvatar(
            child: Text('P109'),
          ),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return P109Screen();
              })
            );
          },
        );
      // - Image Picker Sample
      case HomeCellType.pickImage:
        return ListTile(
          title: Text('Image Picker sample'),
          subtitle: Text('Extra sample.'),
          leading: CircleAvatar(
            child: Text('IP'),
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return PickImageScreen();
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