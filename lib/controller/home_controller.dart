import 'package:bookshop/dao/book_dao.dart';
import 'package:bookshop/model/book.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';

import '../routes/routes_name.dart';

class HomeController extends GetxController {
  final bookId = GetStorage();
  final bookList = <Book?>[].obs;
  @override
  void onInit() {
    super.onInit();
    getAllBooks();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  goToBookDetail(int? id) {
    print("GoToDetail");
    bookId.write('id', id);
    Get.toNamed(BookDetailRoute);
  }

  getAllBooks() async {
    bookList.value = await BookDao().getAllBooks();
  }
}
