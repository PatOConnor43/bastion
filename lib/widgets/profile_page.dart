import 'package:flutter/material.dart';

enum _ItemInfoRowType { header, content }

class _ItemInfo {
  final IconData icon;
  final String label;
  final String route;
  final _ItemInfoRowType type;

  const _ItemInfo(this.icon, this.label, this.type, {this.route});
}

class ProfilePage extends StatelessWidget {
  static const _INFO = [
    _ItemInfo(Icons.list, 'My Records', _ItemInfoRowType.header),
    _ItemInfo(Icons.list, 'Insurance', _ItemInfoRowType.content, route: 'notnull'),
    _ItemInfo(Icons.list, 'Health Records', _ItemInfoRowType.content),
    _ItemInfo(Icons.list, 'Appointments', _ItemInfoRowType.content),
    _ItemInfo(Icons.list, 'Doctors and Facilities', _ItemInfoRowType.content),
    _ItemInfo(Icons.list, 'Saved Medical Information', _ItemInfoRowType.header),
    _ItemInfo(Icons.list, 'Saved Conditions', _ItemInfoRowType.content),
    _ItemInfo(Icons.list, 'Saved Procedures', _ItemInfoRowType.content),
    _ItemInfo(Icons.list, 'Saved Medications', _ItemInfoRowType.content),
    _ItemInfo(Icons.list, 'Saved Allergies', _ItemInfoRowType.content),
  ];

  static const _ROWHEIGHT = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bastion'),
      ),
      body: ListView.builder(itemCount: _INFO.length, itemBuilder: _getRow),
    );
  }

  Widget _getRow(BuildContext context, int index) {
    _ItemInfo info = _INFO[index];
    return info.type == _ItemInfoRowType.header
        ? _getHeaderRow(context, index, info)
        : _getContentRow(context, index, info);
  }

  Widget _getHeaderRow(BuildContext context, int index, _ItemInfo info) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            height: _ROWHEIGHT,
            decoration: BoxDecoration(color: Colors.black.withAlpha(200)),
            child: Center(
              child: Text(
                info.label,
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getContentRow(BuildContext context, int index, _ItemInfo info) {
    return Row(
      children: <Widget>[
        Expanded(
            child: Container(
          height: _ROWHEIGHT,
          child: Row(
            children: <Widget>[
              // TODO: Do I want icons?
              // Icon(info.icon),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    info.label,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  child: Icon(Icons.arrow_forward),
                  onTap: () => info.route == null
                      ? null
                      : Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Scaffold(
                                appBar: AppBar(
                                  title: Text('Bastion'),
                                ),
                                body: Text('test'),
                              ),
                              fullscreenDialog: true)),
                ),
              ),
            ],
          ),
        ))
      ],
    );
  }
}
