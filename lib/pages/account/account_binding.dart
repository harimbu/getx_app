import 'package:get/get.dart';
import 'package:getx_app/pages/account/account_controller.dart';

class AccoundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountController>(() => AccountController());
  }
}
