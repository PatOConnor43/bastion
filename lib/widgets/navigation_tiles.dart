import 'package:bastion/constants.dart';
import 'package:flutter/material.dart';

class _CardInfo {
  final String label;
  final IconData icon;
  final String route;

  const _CardInfo(this.label, this.icon, {this.route = '/'});
}

class NavigationTiles extends StatelessWidget {
  static const List<_CardInfo> INFO = [
    _CardInfo('Symptoms', Icons.add),
    _CardInfo('Doctors', Icons.add),
    _CardInfo('Facilities', Icons.add),
    _CardInfo('Conditions', Icons.add),
    _CardInfo('Medications', Icons.add),
    _CardInfo('Procedures', Icons.add),
    _CardInfo('Profile', Icons.account_box, route: RouteConstants.PROFILE),
    _CardInfo('Hotlines', Icons.add),
    _CardInfo('News', Icons.add),
    _CardInfo('About', Icons.add),
    _CardInfo('Survey', Icons.add),
  ];

  @override
  Widget build(BuildContext context) {
    return new GridView.count(
        crossAxisCount: 3,
        children: INFO.map((cardInfo) => _getCard(context, cardInfo)).toList());
  }

  Widget _getCard(BuildContext context, _CardInfo info) {
    return Card(
      child: InkWell(
        onTap: () => info.route == '/'
            ? showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text('Not Supported'),
                    ))
            : Navigator.pushNamed(context, info.route),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Icon(
                info.icon,
                size: 48.0,
              )),
              Text(info.label)
            ],
          ),
        ),
      ),
    );
  }
}
