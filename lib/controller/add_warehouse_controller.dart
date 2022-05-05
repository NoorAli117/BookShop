import 'dart:async';

import 'package:bookshop/dao/warehouse_dao.dart';
import 'package:bookshop/model/warehouse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AddWarehouseController extends GetxController {
  final form_key = GlobalKey<FormBuilderState>();

  @override
  void onInit() {
    super.onInit();
  }

  addWarehouse() {
    form_key.currentState?.save();
    var data = form_key.currentState?.value;
    var warehouseData = Warehouse(
      code: data!['code'],
      address: data['address'],
      phone: data['phone'],
    );
    WarehouseDao().insertWarehouse(warehouseData);
    print(data);
    Timer(const Duration(seconds: 3), () => Get.back());
  }
}
