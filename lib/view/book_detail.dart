import 'package:bookshop/controller/book_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          backgroundColor: Colors.lightBlue,
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/bg.jpeg'),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.dstATop),
            )),
            child: Container(
              width: size.width,
              child: Obx((() => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 120,
                                child: Card(
                                  child: Image.asset(
                                    'assets/images/bookimage.png',
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  '${_controller.bookDetail['title']}'
                                      .text
                                      .bold
                                      .align(TextAlign.center)
                                      .color(Colors.black)
                                      .size(30)
                                      .make()
                                      .centered()
                                      .p4(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
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
                                          onTap: () => _controller.launcher(
                                              _controller.bookDetail['phone']),
                                          child:
                                              ' Contact: ${_controller.bookDetail['phone']} '
                                                  .text
                                                  .color(Colors.blueAccent)
                                                  .size(24)
                                                  .make()),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ))),
            )));
  }
}
