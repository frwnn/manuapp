import 'package:get/get.dart';

import '../controllers/homeadmin_controller.dart';

class HomeadminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeadminController>(
      () => HomeadminController(),
    );
  }
}
