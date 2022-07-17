import 'package:get/get.dart';
import 'package:getx_app/pages/account/account_binding.dart';
import 'package:getx_app/pages/account/account_page.dart';
import 'package:getx_app/pages/home/home_binding.dart';
import 'package:getx_app/pages/home/home_page.dart';

class AppPages {
  static var list = [
    // GetPage(
    //   name: '/',
    //   page: () => App(),
    //   binding: AppBinding(),
    // ),
    GetPage(
      name: '/',
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: '/account',
      page: () => AccountPage(),
      binding: AccoundBinding(),
    ),
  ];
}
