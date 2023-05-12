import 'package:flutter/material.dart';

class Calculate extends StatelessWidget {
  const Calculate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculate'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
    );
  }
}