import 'package:flutter/material.dart';

class PreARPage extends StatefulWidget {
  @override
  _PreARPageState createState() => _PreARPageState();
}

class _PreARPageState extends State<PreARPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opening camera"),
      ),
      body: Center(
        child: Text(
          'Opening camera',
        ),
      ),
    );
  }
}
