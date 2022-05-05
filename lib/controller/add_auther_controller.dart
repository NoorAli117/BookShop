import 'dart:async';

import 'package:bookshop/dao/author_dao.dart';
import 'package:bookshop/model/auther.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AddAutherController extends GetxController {
  final form_key = GlobalKey<FormBuilderState>();

  @override
  void onInit() {
    super.onInit();
  }

  addAuther() {
    form_key.currentState?.save();
    var data = form_key.currentState?.value;
    var autherData =
        Auther(name: data!['name'], address: data['address'], url: data['url']);
    AuthorDao().insertAuther(autherData);
    print(data);
    Timer(const Duration(seconds: 3), () => Get.back());
  }
}
