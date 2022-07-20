import 'package:get/get.dart';
import 'package:getx_app/controller/app_binding.dart';
import 'package:getx_app/page/app.dart';
import 'package:getx_app/page/detail.dart';
import 'package:getx_app/page/home.dart';

class AppRoute {
  static var list = [
    GetPage(
      name: '/',
      page: () => App(),
      binding: AppBinding(),
    ),
    GetPage(
      name: '/home',
      page: () => Home(),
    ),
    GetPage(
      name: '/detail',
      page: () => Detail(),
    ),
  ];
}
