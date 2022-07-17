import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/pages/home/home_controller.dart';
import 'package:getx_app/pages/home/post_list_item.dart';

class HomePage extends StatelessWidget {
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: GetBuilder<HomeController>(
          builder: (_) {
            return ListView.builder(
              itemCount: homeController.postsList.length,
              itemBuilder: (_, index) {
                return PostListItem(post: homeController.postsList[index]);
              },
            );
          },
        ),
      ),
    );
  }
}
