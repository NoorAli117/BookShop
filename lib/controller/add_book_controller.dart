import 'dart:async';

import 'package:bookshop/dao/author_dao.dart';
import 'package:bookshop/dao/book_dao.dart';
import 'package:bookshop/dao/publisher_dao.dart';
import 'package:bookshop/dao/warehouse_dao.dart';
import 'package:bookshop/model/book.dart';
import 'package:bookshop/routes/routes_name.dart';
import 'package:bookshop/view/add_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class AddBookController extends GetxController {
  final form_key = GlobalKey<FormBuilderState>();
  final autherList = <String>[].obs;
  final publisherList = <String>[].obs;
  final warehouseList = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    getAutherPublisherAndWarehouse();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getAutherPublisherAndWarehouse() async {
    var autherLists = await AuthorDao().getAllAuther();
    for (var i in autherLists) {
      autherList.add(i!.id.toString() + ':' + i.name);
    }
    var publisherLists = await PublisherDao().getAllPublisher();
    for (var j in publisherLists) {
      publisherList.add(j!.id.toString() + ':' + j.name);
    }
    var warehouseLists = await WarehouseDao().getAllWarehouse();
    for (var k in warehouseLists) {
      warehouseList.add(k!.id.toString() + ':' + k.code);
    }
  }

  addBook() {
    form_key.currentState?.save();
    var data = form_key.currentState?.value;
    var authorId = data!['auther_id'].toString().split(':');
    var publisherId = data['publisher_id'].toString().split(':');
    var warehouseId = data['warehouse_id'].toString().split(':');
    var bookData = Book(
        title: data['title'],
        year: int.parse(data['year']),
        price: int.parse(data['price']),
        autherId: int.parse(authorId[0]),
        warehouseId: int.parse(warehouseId[0]),
        publisherId: int.parse(publisherId[0]),
        createdDate: DateTime.now().millisecondsSinceEpoch,
        updatedDate: DateTime.now().millisecondsSinceEpoch);
    BookDao().insertBook(bookData);
    print(data);
    Timer(const Duration(seconds: 3), () => Get.offAllNamed(HomeRoute));
  }
}
