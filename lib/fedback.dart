import 'package:flutter/material.dart';
class FeedBack extends StatelessWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FeedBack'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
    );
  }
}
