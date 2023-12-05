import 'package:flutter/material.dart';

class Task {
  int num1;
  int num2;
  String operator;
  TextEditingController answer = TextEditingController();
  Task({required this.num1, required this.num2, required this.operator});

  bool isItAGoodAnswer() {
    if (operator == "-") {
      return int.parse(answer.text) == num1 - num2;
    } else {
      return int.parse(answer.text) == num1 + num2;
    }
  }
}
