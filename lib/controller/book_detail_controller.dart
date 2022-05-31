import 'package:bookshop/dao/book_dao.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:url_launcher/url_launcher.dart';

class BookDetailController extends GetxController {
  final bookId = GetStorage();
  final bookDetail = {}.obs;
  @override
  void onInit() async {
    super.onInit();
    await getBookDetail(bookId.read('id'));
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    bookId.remove('id');
  }

  getBookDetail(int id) async {
    var res = await BookDao().getAllBookData(id);
    print(res);
    bookDetail.value = res.first;
  }

  launcher(String number) async {
    final url = "tel:$number";
    await launchUrl(Uri.parse(url));
  }
}
