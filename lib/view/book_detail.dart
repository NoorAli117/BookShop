import 'package:bookshop/controller/book_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class BookDetail extends StatelessWidget {
  const BookDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _controller = Get.put(BookDetailController());
    return Scaffold(
        appBar: AppBar(
          title: 'Book Detail'.text.make(),
          backgroundColor: Colors.deepPurple,
        ),
        body: Obx((() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Card(
                      child: Image.asset(
                        'assets/images/bookimage.png',
                      ),
                    ),
                    '${_controller.bookDetail['title']}'
                        .text
                        .align(TextAlign.center)
                        .color(Colors.black)
                        .size(24)
                        .make()
                        .centered()
                        .p4(),
                  ],
                ),
                ' Price : ${_controller.bookDetail['price']} '
                    .text
                    .size(24)
                    .make(),
                ' Auther Name : ${_controller.bookDetail['name']} '
                    .text
                    .size(24)
                    .make(),
                ' Publisher Name : ${_controller.bookDetail['name']} '
                    .text
                    .size(24)
                    .make(),
                ' Warehouse CODE : ${_controller.bookDetail['code']} '
                    .text
                    .size(24)
                    .make(),
                ' Address : ${_controller.bookDetail['address']} '
                    .text
                    .size(24)
                    .make(),
                ' Year : ${_controller.bookDetail['year']} '
                    .text
                    .size(24)
                    .make(),
                InkWell(
                    onTap: () =>
                        _controller.launcher(_controller.bookDetail['phone']),
                    child:
                        ' Contact Number : ${_controller.bookDetail['phone']} '
                            .text
                            .color(Colors.blueAccent)
                            .size(24)
                            .make()),
              ],
            ))));
  }
}
