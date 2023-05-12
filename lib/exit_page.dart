import 'package:flutter/material.dart';
class Exit extends StatelessWidget {
  const Exit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exit'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
    );
  }
}
