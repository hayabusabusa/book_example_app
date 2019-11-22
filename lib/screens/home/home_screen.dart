import 'package:flutter/material.dart';
import 'package:book_exapmle_app/models/home/home.dart';
import 'package:book_exapmle_app/screens/screen.dart';

class HomeScreen extends StatelessWidget {

  // MARK: Properties

  final List<HomeCellType> _rows = [
    HomeCellType.p72,
    HomeCellType.p75];

  // MARK: Build Widget

  Widget _buildListTile(BuildContext context, HomeCellType cellType) {
    switch (cellType) {
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
      default:
        return ListTile(
          title: Text('UNKNOWN'),
        );
    }
  }

  // MARK: Lifecycle

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Samples'),
      ),
      body: ListView(
        children: _rows.map((row) => _buildListTile(context, row)).toList(),
      ),
    );
  }
}