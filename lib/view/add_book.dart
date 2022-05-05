import 'package:bookshop/controller/add_book_controller.dart';
import 'package:bookshop/utils/form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class AddBook extends StatelessWidget {
  const AddBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _controller = Get.put(AddBookController());
    return Scaffold(
      appBar: AppBar(
        title: 'Add Book'.text.make(),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Obx(
          () => FormBuilder(
            key: _controller.form_key,
            child: ListView(
              children: [
                myTextField(name: 'title', hintText: 'Enter Title'),
                myTextField(name: 'year', hintText: 'Enter Year'),
                myTextField(name: 'price', hintText: 'Enter Price'),
                myDropDown(
                    name: 'auther_id',
                    items: _controller.autherList,
                    hintText: 'Enter Auther'),
                myDropDown(
                    name: 'warehouse_id',
                    items: _controller.warehouseList,
                    hintText: 'Enter WareHouse'),
                myDropDown(
                    name: 'publisher_id',
                    items: _controller.publisherList,
                    hintText: 'Enter Publisher'),
                submitButton(
                  onSubmit: () => _controller.addBook(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
