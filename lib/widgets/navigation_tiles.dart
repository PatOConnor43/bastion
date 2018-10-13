import 'package:flutter/material.dart';

class _CardInfo {
  final String label;
  final IconData icon;

  const _CardInfo(this.label, this.icon);
}

class NavigationTiles extends StatelessWidget {
  static const List<_CardInfo> INFO = [
    _CardInfo('Symptoms', Icons.add),
    _CardInfo('Doctors', Icons.add),
    _CardInfo('Facilities', Icons.add),
    _CardInfo('Conditions', Icons.add),
    _CardInfo('Medications', Icons.add),
    _CardInfo('Procedures', Icons.add),
    _CardInfo('Profile', Icons.add),
    _CardInfo('Hotlines', Icons.add),
    _CardInfo('News', Icons.add),
    _CardInfo('About', Icons.add),
    _CardInfo('Survey', Icons.add),
  ];

  @override
  Widget build(BuildContext context) {
    return new GridView.count(
        crossAxisCount: 3,
        children: INFO.map(_getCard).toList()
        );
  }

  Widget _getCard(_CardInfo info) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[Expanded(child: Icon(info.icon)), Text(info.label)],
        ),
      ),
    );
  }
}
