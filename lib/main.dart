import 'package:bookshop/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_routes.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Book Store',
      debugShowCheckedModeBanner: false,
      locale: Get.deviceLocale,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      initialBinding: BindingsBuilder(() {
        Get.lazyPut<SplashController>(
          () => SplashController(),
        );
      }),
      getPages: appRoutes,
    );
  }
}
