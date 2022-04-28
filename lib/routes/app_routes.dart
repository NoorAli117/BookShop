import 'package:bookshop/view/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/book_detail.dart';
import '../view/home.dart';
import 'routes_name.dart';

final appRoutes = [
  GetPage(name: '/', page: () => const Splash()),
  GetPage(name: HomeRoute, page: () => Home(), middlewares: [AuthMiddleWare()]),
  GetPage(
      name: BookDetailRoute,
      page: () => const BookDetail(),
      middlewares: [AuthMiddleWare()]),
  // GetPage(
  //     name: DownloadAudioVideoRoute,
  //     page: () => const Download(),
  //     middlewares: [AuthMiddleWare()]),
  // GetPage(
  //     name: NaatRoute,
  //     page: () => const NaatByHurf(),
  //     middlewares: [AuthMiddleWare()]),
  // GetPage(
  //     name: NaatDetailRoute,
  //     page: () => const NaatDetail(),
  //     middlewares: [AuthMiddleWare()]),
];

class AuthMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {}
}
