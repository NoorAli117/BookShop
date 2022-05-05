import 'package:bookshop/view/add_auther.dart';
import 'package:bookshop/view/add_book.dart';
import 'package:bookshop/view/add_publisher.dart';
import 'package:bookshop/view/add_warehouse.dart';
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
  GetPage(
      name: AddBookRoute,
      page: () => const AddBook(),
      middlewares: [AuthMiddleWare()]),
  GetPage(
      name: AddPublisherRoute,
      page: () => const AddPublisher(),
      middlewares: [AuthMiddleWare()]),
  GetPage(
      name: AddAutherRoute,
      page: () => const AddAuther(),
      middlewares: [AuthMiddleWare()]),
  GetPage(
      name: AddWareHouseRoute,
      page: () => const AddWarehouse(),
      middlewares: [AuthMiddleWare()]),
];

class AuthMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {}
}
