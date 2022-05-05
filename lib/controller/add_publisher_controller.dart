import 'dart:async';

import 'package:bookshop/dao/publisher_dao.dart';
import 'package:bookshop/model/publisher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AddPublisherController extends GetxController {
  final form_key = GlobalKey<FormBuilderState>();

  @override
  void onInit() {
    super.onInit();
  }

  addPublisher() {
    form_key.currentState?.save();
    var data = form_key.currentState?.value;
    var publisherData = Publisher(
        name: data!['name'],
        address: data['address'],
        phone: data['phone'],
        url: data['url']);
    PublisherDao().insertPublisher(publisherData);
    print(data);
    Timer(const Duration(seconds: 3), () => Get.back());
  }
}
