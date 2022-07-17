import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getx_app/model/post.dart';

class HomeController extends GetxController {
  List<Post> postsList = [];

  @override
  void onInit() {
    getPosts();
    super.onInit();
  }

  void getPosts() async {
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');
    final posts =
        (response.data as List).map((json) => Post.fromJson(json)).toList();

    postsList.addAll(posts);
    update();
  }
}
