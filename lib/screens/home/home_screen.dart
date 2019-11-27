import 'package:flutter/material.dart';
import 'package:book_exapmle_app/models/home/home.dart';
import 'package:book_exapmle_app/screens/home/widgets/home_widget.dart';

class HomeScreen extends StatelessWidget {

  // MARK: Properties

  final List<HomeCellType> _rows = [
    HomeCellType.p72,
    HomeCellType.p75,
    HomeCellType.p76,
    HomeCellType.p78,
    HomeCellType.p83,
    HomeCellType.p85,
    HomeCellType.p87,
    HomeCellType.p91];

  // MARK: Lifecycle

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Samples'),
      ),
      body: ListView(
        children: _rows.map((row) => HomeListTile(cellType: row)).toList(),
      ),
    );
  }
}