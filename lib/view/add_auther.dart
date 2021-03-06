import 'package:bookshop/controller/add_auther_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/form_field.dart';

class AddAuther extends StatelessWidget {
  const AddAuther({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(AddAutherController());
    return Scaffold(
      appBar: AppBar(
        title: 'Add Auther'.text.make(),
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
              Container(
                height: 250,
                child: const Image(
                  image: AssetImage('assets/images/auther.png'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              myTextField(name: 'name', hintText: 'Enter Name'),
              myTextField(name: 'address', hintText: 'Enter Address'),
              myTextField(name: 'url', hintText: 'Enter Url'),
              submitButton(
                onSubmit: () => _controller.addAuther(),
              )
            ],
          ),
        ),
      ).centered(),
    );
  }
}
