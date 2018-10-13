import 'package:flutter/material.dart';

void main() => runApp(Bastion());

class Bastion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bastion',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: BastionPage(title: 'Bastion'),
    );
  }
}

class BastionPage extends StatefulWidget {
  BastionPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _BastionPageState createState() => _BastionPageState();
}

class _BastionPageState extends State<BastionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(),
    );
  }
}
