import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_9/controllers/home_view_controller.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeViewController controller = Get.put(HomeViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(title: Text("feladatok")),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: controller.getRowWidget(),
                ),
                CupertinoButton.filled(
                  child: Text("Eredmény"),
                  onPressed: () {
                    controller.resultCounting();
                  },
                )
              ],
            ),
          );
        });
  }
}
