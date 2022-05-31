import 'package:bookshop/controller/add_publisher_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/form_field.dart';

class AddPublisher extends StatelessWidget {
  const AddPublisher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(AddPublisherController());
    return Scaffold(
      appBar: AppBar(
        title: 'Add Publisher'.text.make(),
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
              const SizedBox(
                height: 30,
              ),
              const Image(
                image: AssetImage('assets/images/publisher.png'),
              ),
              SizedBox(
                height: 20,
              ),
              myTextField(name: 'name', hintText: 'Enter Name'),
              myTextField(name: 'address', hintText: 'Enter Address'),
              myTextField(name: 'phone', hintText: 'Enter Phone'),
              myTextField(name: 'url', hintText: 'Enter Url'),
              submitButton(
                onSubmit: () => _controller.addPublisher(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
