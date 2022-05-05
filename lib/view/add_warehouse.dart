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
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        alignment: Alignment.center,
        child: FormBuilder(
          key: _controller.form_key,
          child: ListView(
            children: [
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
