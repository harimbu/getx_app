import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/routes/app_pages.dart';
import 'package:getx_app/themes/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      themeMode: ThemeMode.system,
      initialRoute: '/',
      getPages: AppPages.list,
    );
  }
}
