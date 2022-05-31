import 'package:bookshop/controller/add_warehouse_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/form_field.dart';

class AddWarehouse extends StatelessWidget {
  const AddWarehouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(AddWarehouseController());
    return Scaffold(
      appBar: AppBar(
        title: 'Add WareHouse'.text.make(),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/bg.jpeg'),
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3), BlendMode.dstATop),
        )),
        alignment: Alignment.center,
        child: FormBuilder(
          key: _controller.form_key,
          child: ListView(
            children: [
              const Image(
                image: AssetImage(
                  'assets/images/werehouse.png',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              myTextField(name: 'code', hintText: 'Enter Code'),
              myTextField(name: 'address', hintText: 'Enter Address'),
              myTextField(name: 'phone', hintText: 'Enter phone'),
              submitButton(onSubmit: () => _controller.addWarehouse())
            ],
          ),
        ),
      ),
    );
  }
}
