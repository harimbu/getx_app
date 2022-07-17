# getx_app

A new Flutter project.

## jsonplaceholder

url
https://jsonplaceholder.typicode.com/posts


## getx controller

```
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
```