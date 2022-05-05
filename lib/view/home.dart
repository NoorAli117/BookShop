import 'package:bookshop/controller/home_controller.dart';
import 'package:bookshop/routes/routes_name.dart';
import 'package:bookshop/view/side_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(HomeController());
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: SideDrawer(),
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: 'Books'.text.size(24).make(),
        centerTitle: true,
        actions: [
          GestureDetector(
            child: const Icon(Icons.add).p4(),
            onTap: () => Get.toNamed(AddBookRoute),
          )
        ],
        backgroundColor: Colors.deepPurple,
      ),
      body: Obx(
        () => ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: _controller.bookList.length,
          itemBuilder: (context, index) {
            return Slidable(
              closeOnScroll: true,
              startActionPane:
                  ActionPane(motion: const ScrollMotion(), children: [
                SlidableAction(
                  onPressed: (_) => _controller
                      .goToBookDetail(_controller.bookList[index]!.id),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.deepPurple,
                  icon: Icons.details,
                  label: 'Detail',
                ),
              ]),
              child: Container(
                width: size.width,
                child: Container(
                  height: size.height / 6,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(2, 5),
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images/bookimage.png',
                      height: 80,
                      width: 80,
                    ),
                    title: _controller.bookList[index]!.title.text
                        .size(size.width / 15)
                        .make(),
                  ).centered(),
                ).p12(),
              ),
            );
          },
        ),
      ),
    );
  }
}
