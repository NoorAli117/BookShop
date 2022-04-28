import 'package:bookshop/view/book_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../routes/routes_name.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Books',
            style: TextStyle(fontSize: 25),
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Slidable(
            closeOnScroll: true,
            startActionPane: ActionPane(motion: ScrollMotion(), children: [
              SlidableAction(
                onPressed: (context) => Get.toNamed(BookDetailRoute),
                backgroundColor: Colors.white,
                foregroundColor: Colors.deepPurple,
                icon: Icons.details,
                label: 'Detail',
              ),
            ]),
            child: Container(
              width: size.width,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      height: 120,
                      width: 370,
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
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
