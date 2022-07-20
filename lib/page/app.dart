import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/controller/app_controller.dart';

class App extends GetView<AppController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${controller.count}'),
                TextButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: Text('+'),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed('/home');
                  },
                  child: Text('home page...'),
                )
              ],
            ),
          )),
    );
  }
}
