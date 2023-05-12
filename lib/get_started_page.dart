import 'package:flutter/material.dart';

class CurrntUsage extends StatelessWidget {
  const CurrntUsage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Current Usage'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
    );
  }
}
