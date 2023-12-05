import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  ResultView({required this.result});
  String result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pontszámom"),
      ),
      body: Center(
          child: Text(
        "${result}/5",
        style: TextStyle(fontSize: 150),
      )),
    );
  }
}
