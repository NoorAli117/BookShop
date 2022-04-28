import 'package:bookshop/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends GetView<SplashController> {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(SplashController());
    return Container(
        color: Colors.white, child: Image.asset('assets/images/book.webp'));
  }
}
