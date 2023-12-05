import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_9/model/Task.dart';
import 'package:flutter_application_9/views/result_view.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController {
  List<Task> tasks = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tasks.add(Task(
      num1: Random().nextInt(6) + 5,
      num2: Random().nextInt(6) + 5,
      operator: "+",
    ));
    tasks.add(Task(
      num1: Random().nextInt(6) + 5,
      num2: Random().nextInt(6) + 5,
      operator: "+",
    ));
    tasks.add(Task(
      num1: Random().nextInt(6) + 5,
      num2: Random().nextInt(6) + 5,
      operator: "-",
    ));
    tasks.add(Task(
      num1: Random().nextInt(6) + 5,
      num2: Random().nextInt(6) + 5,
      operator: "-",
    ));
    tasks.add(Task(
      num1: Random().nextInt(6) + 5,
      num2: Random().nextInt(6) + 5,
      operator: "-",
    ));
  }

  List<Widget> getRowWidget() {
    List<Widget> temp = [];

    for (Task task in tasks) {
      temp.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${task.num1} ${task.operator} ${task.num2} = ",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                width: 100,
                child: TextField(
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  controller: task.answer,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return temp;
  }

  void resultCounting() {
    int pont = 0;
    // első
    for (Task task in tasks) {
      if (task.isItAGoodAnswer()) {
        pont++;
      }
    }

    Get.to(
      ResultView(
        result: pont.toString(),
      ),
    );
  }
}
