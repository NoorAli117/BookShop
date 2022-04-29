import 'package:bookshop/controller/book_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookDetail extends StatelessWidget {
  const BookDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _controller = Get.put(BookDetailController());
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}
