import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../routes/routes_name.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  goToBookDetail() {
    print("GoToDetail");
    Get.toNamed(BookDetailRoute);
  }
}
