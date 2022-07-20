import 'package:get/get.dart';
import 'package:getx_app/controller/app_controller.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppController());
  }
}
